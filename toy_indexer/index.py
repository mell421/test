from nltk.stem import PorterStemmer
from typing import Tuple, Generator, Dict
from timing import logger

from nltk.corpus import stopwords
stop_words = set(stopwords.words('english'))
porter_stemmer = PorterStemmer()


class IndexObject:
    def __init__(self) -> None:
        # frequency
        self.tf: int = 0
        # Term frequency for a document
        self.tdf: Dict[str, int] = dict()

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


class IndexStore:
    def __init__(self) -> None:
        # term and term data object
        self.objects: Dict[str, IndexObject] = dict()

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
