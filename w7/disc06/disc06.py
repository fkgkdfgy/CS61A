#!/usr/bin/python
# Description: iterator and generator

def memory(n):
    """
    >>> f = memory(10)
    >>> f(lambda x: x * 2)
    20
    >>> f(lambda x: x - 7)
    13
    >>> f(lambda x: x > 5)
    True
    """
    def f(g):
        nonlocal n
        n = g(n)
        return n
    return f

def WWPD1():
    """
    >>> s1 = [1, 2, 3]
    >>> s2 = s1
    >>> s1 is s2
    True
    >>> s2.extend([5, 6])
    >>> s1[4]
    6
    >>> s1.append([-1, 0, 1])
    >>> s2[5]
    [-1, 0, 1]
    >>> s3 = s2[:]
    >>> s3.insert(3, s2.pop(3))
    >>> len(s1)
    5
    >>> s1[4] is s3[6]
    True
    >>> s3[s2[4][1]]
    1
    >>> s1[:3] is s2[:3]
    False
    >>> s1[:3] == s2[:3]
    True
    """
    return 0


def group_by(s, fn):
    """
    >>> group_by([12, 23, 14, 45], lambda p: p // 10)
    {1: [12, 14], 2: [23], 4: [45]}
    >>> group_by(range(-3, 4), lambda x: x * x)
    {9: [-3, 3], 4: [-2, 2], 1: [-1, 1], 0: [0]}
    """
    grouped = {}
    for num in s:
        key = fn(num)
        if key in grouped:
            grouped[key].append(num)
        else:
            grouped[key] = [num]
    return grouped


def add_this_many(x, el, s):
    """ Adds el to the end of s the number of times x occurs
    in s.
    >>> s = [1, 2, 4, 2, 1]
    >>> add_this_many(1, 5, s)
    >>> s
    [1, 2, 4, 2, 1, 5, 5]
    >>> add_this_many(2, 2, s)
    >>> s
    [1, 2, 4, 2, 1, 5, 5, 2, 2]
    """
    for i in range(len(s)):
        if s[i] == x:
            s.append(el)


def WWPD2():
    """
    >>> s = [[1, 2]]
    >>> i = iter(s)
    >>> j = iter(next(i))
    >>> next(j)
    1
    >>> s.append(3)
    >>> next(i)
    3
    >>> next(j)
    2
    """
    return 0


def filter(iterable, fn):
    """
    >>> is_even = lambda x: x % 2 == 0
    >>> list(filter(range(5), is_even)) # a list of the values yielded from the call to filter
    [0, 2, 4]
    >>> all_odd = (2*y-1 for y in range(5))
    >>> list(filter(all_odd, is_even))
    []
    >>> naturals = (n for n in range(1, 100))
    >>> s = filter(naturals, is_even)
    >>> next(s)
    2
    >>> next(s)
    4
    """
    for s in iterable:
        if fn(s):
            yield s


def merge(a, b):
    """
    >>> def sequence(start, step):
    ...     while True:
    ...         yield start
    ...         start += step
    >>> a = sequence(2, 3) # 2, 5, 8, 11, 14, ...
    >>> b = sequence(3, 2) # 3, 5, 7, 9, 11, 13, 15, ...
    >>> result = merge(a, b) # 2, 3, 5, 7, 8, 9, 11, 13, 14, 15
    >>> [next(result) for _ in range(10)]
    [2, 3, 5, 7, 8, 9, 11, 13, 14, 15]
    """
    n1, n2 = next(a),next(b)
    while True:
        if n1 < n2:
            yield n1
            n1 = next(a)
        elif n1==n2:
            yield n2
            n1 = next(a)
            n2 = next(b)
        else:
            yield n2
            n2 = next(b)






