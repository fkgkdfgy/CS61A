#!/bin/bash

def count_stair_ways(n):
    """

    >>> count_stair_ways(2)
    2
    >>> count_stair_ways(0)
    0

    """
    if n in [1,2,0]:
        return n
    else:
        return count_stair_ways(n-1) + count_stair_ways(n-2)

def count_k(n,k):
    """
    >>> count_k(3, 3) # 3, 2 + 1, 1 + 2, 1 + 1 + 1
    4
    >>> count_k(4, 4)
    8
    >>> count_k(10, 3)
    274
    >>> count_k(300, 1) # Only one step at a time
    1
    """
    if n==0:
        return 1
    elif n<0:
        return 0
    else:
        return sum([count_k(n-i,k) for i in range(1,k+1)])


def max_product(s):
    """Return the maximum product that can be formed using non-consecutive
    elements of s.
    >>> max_product([10,3,1,9,2]) # 10 * 9
    90
    >>> max_product([5,10,5,10,5]) # 5 * 5 * 5
    125
    >>> max_product([])
    1
    """ 
    if len(s)==0:
        return 1
    elif len(s)<=2:
        return max(s)
    else:
        select=s[0]*max_product(s[2:])
        non_select=max_product(s[1:])
        return max(select,non_select)




