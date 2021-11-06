import re
from math import log10
import enum
from nltk.stem import PorterStemmer
from typing import List, Tuple, Generator, Dict
from timing import logger
from math import log10
from nltk.corpus import stopwords
from IndexMode import IndexMode 
from math import sqrt
stop_words = set(stopwords.words('english'))
porter_stemmer = PorterStemmer()


class IndexObject:
    def __init__(self) -> None:
        # frequency
        self.tf: int = 0
        # Term frequency for a document
        self.tdf: Dict[str, int] = dict()
        # future w_{t,d}, require computing
        self.wtd: Dict[str, float] = dict()

        self.smart_ltn = {}  # {"docno":value}
        self.smart_ltc = {}  # {"docno":value}
    def add_find(self, doc: str) -> None:
        """
        notice this term was found in the document doc
        """

        # Increase number of time the term is found
        self.tf += 1

        # Increase the number of time for this document by one
        if doc in self.tdf:
            self.tdf[doc] += 1
        else:
            self.tdf[doc] = 1

    def get_document_frequency(self) -> int:
        """
        read the function name
        """
        return len(self.tdf)

    def merge_with(self, index2: 'IndexObject') -> None:
        """
        merge another IndexObject into this one
        """
        self.tf += index2.tf
        for doc in index2.tdf:
            if doc in self.tdf:
                self.tdf[doc] += index2.tdf[doc]
            else:
                self.tdf[doc] = index2.tdf[doc]

    def smartLTN_values(self, doc_count, index , mode_ltc):
        """
        Set Smart LTN Value of the term associated to document docno
        """
        for _document in self.tdf:
            ltn_w=(
                1 + log10(self.tdf[_document]))*(log10(doc_count/self.get_document_frequency()))
            self.smart_ltn.update({_document: ltn_w})
            if mode_ltc:
                if _document in index.tmp_sum_ltc:
                    index.tmp_sum_ltc[_document]=index.tmp_sum_ltc[_document] + ltn_w ** 2
                else:
                    index.tmp_sum_ltc.update({_document:ltn_w ** 2 })
        
            
    def smartLTC_values(self, index):
        """
        Set Smart LTC Value of the term associated to document

        """
        for _doc in self.smart_ltn:
            if _doc in index.tmp_sum_ltc:
                
                self.smart_ltc.update({_doc:self.smart_ltn[_doc] / sqrt(index.tmp_sum_ltc[_doc])}) 

class RankedRetrivialAnswer:
    def __init__(self, wtdsum: float, doc: str) -> None:
        self.wtdsum: float = wtdsum
        self.doc: str = doc


class IndexStore:
    def __init__(self) -> None:
        # term and term data object
        self.objects: Dict[str, IndexObject] = dict()
        self.doc_size: Dict[str, int] = dict()

        self.indexMode=IndexMode.BOOLEAN
        self.tmp_sum_ltc={}# {"word": sum}
        self.queryTermManager={}  # {"word": frequency}
        self.RSV={} # {"DocNum" : score}
    def fetch_or_create_object(self, word: str) -> IndexObject:
        """
        Fetch or create an index object for a certain word
        """
        # Check if already in the store
        if word in self.objects:
            return self.objects[word]

        # otherwise, create one
        wl = IndexObject()
        self.objects[word] = wl
        return wl

    def tf_doc_of_object(self, word: str) -> Generator[Tuple[int, str], None, None]:
        """
        generate tuples tf/docid for a word, generate nothing if the word isn't in the store
        """
        # Check if the word is in the store
        if word not in self.objects:
            return
        tf = self.objects[word].tdf

        # Yield term frequency
        for doc in tf:
            yield tf[doc], doc

    def fetch_word_tf(self, word: str) -> Dict[str, int]:
        """
        Fetch the tf for a word, return an empty dict if the word isn't in the store
        """
        if word in self.objects:
            return self.objects[word].tdf
        return dict()

    def remove_stopwords(self):
        """
        (part 3), remove the stopwords of the store
        """
        logger.write("Removing stopwords...")
        for word in stop_words:
            if word in self.objects:
                del self.objects[word]

    def apply_stemmer(self):
        """
        (part 4), apply the stemmer on all the word using a O(n) merge algorithm
        """
        logger.write("Applying stemmer...")

        # TODO: duplicate the size of the heap, find a better way
        future_objects = dict()

        for word in self.objects:
            # Fetch the object
            obj = self.objects[word]
            w = porter_stemmer.stem(word)

            # If it can be merge with another word already in the future store, merge it
            if w in future_objects:
                future_objects[w].merge_with(obj)
            else:
                future_objects[w] = obj

        # Set the new store
        self.objects = future_objects

    def add_word(self, doc: str, word: str) -> None:
        """
        add a word to the index by his document
        """

        wl = self.fetch_or_create_object(word)
        wl.add_find(doc)

        if doc in self.doc_size:
            self.doc_size[doc] += 1
        else:
            self.doc_size[doc] = 1

    def compute_avg_doc_size(self) -> float:
        """
        compute the average doc size of documents
        """
        a = 0
        for doc in self.doc_size:
            a += self.doc_size[doc]

        return a / len(self.doc_size)

    def compute_smart_ltn(self) -> None:
        """
        ex4 compute the smart ltn into the IndexObject.wtd properties
        """
        doc_count = len(self.doc_size)
        for word in self.objects:
            io = self.objects[word]
            df = io.get_document_frequency()
            # Clear old computations
            io.wtd.clear()

            for doc in io.tdf:
                tf = io.tdf[doc]
                io.wtd[doc] = (1 + log10(tf)) * log10(doc_count / df)

    def compute_smart_ltc(self) -> None:
        """
        ex6 compute the smart ltc into the IndexObject.wtd properties
        """
        # precompute the smart ltn into the wtd
        self.compute_smart_ltn()

        wtdsum: Dict[str, float] = dict()

        # compute the sum for each document
        for word in self.objects:
            io = self.objects[word]
            for doc in io.wtd:
                if doc in wtdsum:
                    wtdsum[doc] += io.wtd[doc] ** 2
                else:
                    wtdsum[doc] = io.wtd[doc] ** 2

        # compute the square root for each doc
        for doc in wtdsum:
            wtdsum[doc] **= 0.5

        # put the new wtd into each index object
        for word in self.objects:
            io = self.objects[word]
            for doc in io.wtd:
                io.wtd[doc] /= wtdsum[doc]

    def compute_bm25(self, k1: float, b: float) -> None:
        """
        ex8 compute the bm25 into the IndexObject.wtd properties
        """
        doc_count = len(self.doc_size)
        doc_average_length = self.compute_avg_doc_size()
        for word in self.objects:
            io = self.objects[word]
            df = io.get_document_frequency()
            # Clear old computations
            io.wtd.clear()

            # compute the idf part
            bm_idf = log10((doc_count - df + 0.5) / (df + 0.5))

            # compute the tf part
            for doc in io.tdf:
                tf = io.tdf[doc]
                bm_tf = (tf * (k1 + 1)) / \
                    (k1 * ((1 - b) + b * io.tf / doc_average_length) + tf)

                # put the tf-idf into the wtf
                io.wtd[doc] = bm_tf * bm_idf

    def compute_ranked_retrieval(self, query: str) -> Dict[str, float]:
        """
        compute the rsv for each document with a query
        """
        words = re.findall("\w+", query)

        rsv: Dict[str, float] = dict()

        # Add for each word the wtd into the rsv for each doc
        for word in words:
            if word in self.objects:
                wtd = self.objects[word].wtd
                for doc in wtd:
                    if doc in rsv:
                        rsv[doc] += wtd[doc]
                    else:
                        rsv[doc] = wtd[doc]

        return rsv

    def compute_ranked_retrieval_as_list(self, query: str) -> List[RankedRetrivialAnswer]:
        """
        compute the rsv for each document with a query and return it as a list sorted by wtdsum
        """
        rsvdoc = self.compute_ranked_retrieval(query)

        rsv: List[RankedRetrivialAnswer] = []

        for doc in rsvdoc:
            rsv.append(RankedRetrivialAnswer(rsvdoc[doc], doc))

        rsv.sort(key=lambda a: a.wtdsum, reverse=True)

        return rsv
    def setQueryTermFrequency(self,queryWord):

        """
        Set Term frequency of the query words
        """
        if queryWord in self.queryTermManager:
            self.queryTermManager[queryWord] += 1
        else :
            self.queryTermManager[queryWord]=1 
        


