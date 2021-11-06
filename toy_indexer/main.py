from os import stat
import re
from timing import logger, QuickTime
from index import IndexObject, IndexStore
from reading import supply_docs
from optparse import OptionParser, Values
from graph_cache import StatCache
from  query_parser import parse
import itertools
from IndexMode import IndexMode

algorithms = ["all", "bool", "bm25", "ltc", "ltn"]


def compute_algo(algo: str, index: IndexObject, options: Values):
    if algo == "all" or algo == "bool":
        return

    logger.write("Computing algorithm " + algo)

    if algo == "ltn":
        index.compute_smart_ltn()
    elif algo == "ltc":
        index.compute_smart_ltc()
    elif algo == "bm25":
        index.compute_bm25(options.bm25k1, options.bm25b)

    logger.write(
        "test ranked retrieval... '" + options.algo_sentence + "'")
    answer = index.compute_ranked_retrieval_as_list(options.algo_sentence)
    # Print the answers
    for a in itertools.islice(answer, 10):
        print("-", a.doc, "(" + str(a.wtdsum) + ")")


def main():
    # Add options to the prog
    parser = OptionParser()

    parser.add_option("-s", "--stemmer", dest="stemmer", action="store_true",
                      help="apply stemmer", default=False)
    parser.add_option("-w", "--stopwords", dest="stopwords", action="store_true",
                      help="remove stopwords", default=False)
    parser.add_option("-q", "--query", dest="query", action="store_true",
                      help="open query mode", default=False)
    parser.add_option("-i", "--index", dest="index", action="store_true",
                      help="show index", default=False)
    parser.add_option("-o", "--output_dir", dest="output_dir",
                      help="data output dir", default="output_dir")
    parser.add_option("-S", "--step", dest="step", type="int",
                      help="step for stats", default=1000)

    parser.add_option("-a", "--algorithm", dest="algo",
                      help="algorithm to use to enter query mode, values: " + " ".join(algorithms), default=algorithms[0])
    parser.add_option("-A", "--algorithm_sentence", dest="algo_sentence",
                      help="algorithm try value", default="web ranking scoring algorithm")

    parser.add_option("-B", "--bm25b", dest="bm25b", type="float",
                      help="value of b if --algorithm=bm25", default=0.75)
    parser.add_option("-K", "--bm25k1", dest="bm25k1", type="float",
                      help="value of k1 if --algorithm=bm25", default=1.2)
    parser.set_usage(parser.get_prog_name() + " (filename+)")

    options, args = parser.parse_args()

    if len(args) < 1 or options.algo not in algorithms:
        parser.print_usage()
        return

    # locate end parenthesis of boolean expression

    index = IndexStore()
    stats = StatCache(index, options.step)

    # Building index

    logger.start()
    stats.start()
    logger.write("Starting...")

    # Number of document for this session
    doc_count = 0
    # Number of word for this session
    word_count = 0
    _docIdList=[]
    for docno, doctext in supply_docs(args):
        _docIdList.append(docno)
        doc_count += 1
        # Fetch all the words
        words = re.findall('\w+', doctext)
        for w in words:
            word = w.lower()

            word_count += 1

            # Fetch an index object and add a find
            index.add_word(docno, word)

        # Ask to compute the stats to produce images
        stats.compute_stat()

    # P3 - Delete stop words
    if options.stopwords:
        index.remove_stopwords()

    # P4 - Stemmer
    if options.stemmer:
        index.apply_stemmer()

    # Practice 3 - wdf
    if options.algo == "all":
        for algo in algorithms:
            compute_algo(algo, index, options)
    elif options.algo != "bool":
        compute_algo(options.algo, index, options)

    logger.write("Completed...")

    logger.end()

    # Produce the stats and the images
    stats.produce_stat(options.output_dir)

    print("Indexing time:   ", logger.get_time(), "s", sep="")
    print("Doc count:       ", doc_count, " doc(s)", sep="")
    print("Word count:      ", word_count, " word(s)", sep="")
    print("Vocabulary size: ", len(index.objects), " word(s)", sep="")

    # Print index if asked or not enough element
    if doc_count <= 10 or options.index:
        for word in sorted(index.objects):
            io = index.objects[word]
            print("{0}=df({1})".format(io.get_document_frequency(), word))
            for tf, doc in index.tf_doc_of_object(word):
                print("\t{0} {1}".format(tf, doc))
    else:
        print("List avoided because doc count > 10")

    # (P4) Enter in query mode
    if options.query:
        timer = QuickTime()
        while True:
            query = input("> ")
            
            #Quit the search engine 
            if query.strip().lower() == "clear":
                break
                
            _indexMode = input(
                "\n> Choose you indexation mode : \n Boolean (1) \n SMART LTN (2) \n SMART LTC (3) \n BM25 (4) \n\n >your answer : ")
            try:

                _indexMode = int(_indexMode.strip())
                timer.start()
                for word in sorted(index.objects):
                    _wordProperties = index.objects[word]
                    # SMART LTN case
                    if _indexMode == 2 or _indexMode == 3:
                        index.indexMode = IndexMode.SMART_LTN if _indexMode == 2 else IndexMode.SMART_LTC 
                        #Fill in SMART LTN Values
                        _wordProperties.smartLTN_values(doc_count,index, True if _indexMode == 3 else False ) 
                        if _indexMode == 3:
                            #Fill in SMART LTC Values
                            _wordProperties.smartLTC_values(index)
                
                    
                answer = parse(index, query.lower(),_docIdList )
                timer.end()
                print(len(answer), " element(s) in ",
                      timer.last_time(), "s", sep="")
                print("\n List of returned documents with {} mode : \n ".format(index.indexMode.name))
                # Print the answers
                for _id,_result in enumerate(answer):
                    print(" {}) DOC : {} | rsv : {} ".format(_id+1,_result,answer[_result]))

            except:
                raise("Verify your indexation mode")

if __name__ == "__main__":
    main()
