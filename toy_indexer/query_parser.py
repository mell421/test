
from typing import Generator, List, Set
from index import IndexStore


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


def parse(store: IndexStore, exp: str) -> Set[str]:
    """
    parse an expression and return the set of the matched documents
    """
    return parse_expr(store, exp.lower().split())
