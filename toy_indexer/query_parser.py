
from typing import Generator, List, Set
from index import IndexStore
import re
import operator
import itertools

from IndexMode import IndexMode
def locate_end_parenthesis(exp: List[str], start: int) -> int:
    """
    locate the next parenthesis index, raise an exception if no next parenthesis is found
    """
    deep = 0
    for i in range(start, len(exp)):
        c = exp[i]
        if c == '(':
            deep += 1
        elif c == ')':
            if deep == 0:
                return i
            else:
                deep -= 1
    raise Exception("No end parenthesis!")


def and_lst(a: Set[str], b: Set[str], not_b: bool) -> None:
    """
    equivalent to a &= b
    """
    if not_b:
        raise Exception("'not' not implemented")

    a = a.intersection(b)


def or_lst(a: Set[str], b: Set[str], not_b: bool) -> None:
    """
    equivalent to a |= b
    """
    if not_b:
        raise Exception("'not' not implemented")

    a = a.union(b)


def parse_expr(store: IndexStore, exp: List[str]) -> Set[str]:
    """
    parse the expression and return a set of the matched documents
    """
    and_result = None

    i = 0
    next_inverted = False
    while i < len(exp):
        op = exp[i]
        i += 1

        # NOT operator
        if op == "!":
            next_inverted = True
            continue

        # Empty part
        if op == "":
            continue

        # Parenthesis expression
        if op == "(":
            end = locate_end_parenthesis(exp, i)
            output = parse_expr(store, exp[i:end])
            if and_result == None:
                and_result = output
            else:
                and_lst(and_result, output, next_inverted)
            i = end + 1
        # Or operator
        elif op == "|":
            b = parse_expr(store, exp[i:len(exp)])
            if and_result == None:
                and_result = b
            else:
                or_lst(and_result, b, next_inverted)
            return and_result
        # Word
        else:
            output = set(store.fetch_word_tf(op).keys())
            # word
            if and_result == None:
                and_result = output
            else:
                and_lst(and_result, output, next_inverted)
        next_inverted = False

    return and_result


def parse(store: IndexStore, exp: str, docs) :
    """
    parse an expression and return the set of the matched documents
    """

    #return parse_expr(store, exp.lower().split())

    _indexTerms=list(store.objects.keys())

    # index query words
    _queryWords=re.findall('\w+', exp.strip())
    for _queryword in _queryWords:
        if _queryword in  _indexTerms  :
            store.setQueryTermFrequency(_queryword)       
    # Compute RSV (d,q) 
    

    for _docNum  in docs:
        _rsv=0
        for _qterm in store.queryTermManager:
            _qwordProp=store.objects[_qterm]
            if store.indexMode== IndexMode.SMART_LTN and _docNum in list(_qwordProp.smart_ltn.keys()):
                _rsv= _rsv + ( _qwordProp.smart_ltn[_docNum] * store.queryTermManager[_qterm] )
            if store.indexMode== IndexMode.SMART_LTC and _docNum in list(_qwordProp.smart_ltc.keys()):
                _rsv= _rsv + ( _qwordProp.smart_ltc[_docNum] * store.queryTermManager[_qterm] )
        store.RSV.update({_docNum: _rsv}) 
            

    # return 10 
    _dicOrdered=dict( sorted(store.RSV.items(), key=operator.itemgetter(1),reverse=True))
    return dict(itertools.islice(_dicOrdered.items(), 10))


