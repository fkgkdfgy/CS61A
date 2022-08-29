this_file = __file__


def make_adder_inc(a):
    """
    >>> adder1 = make_adder_inc(5)
    >>> adder2 = make_adder_inc(6)
    >>> adder1(2)
    7
    >>> adder1(2) # 5 + 2 + 1
    8
    >>> adder1(10) # 5 + 10 + 2
    17
    >>> [adder1(x) for x in [1, 2, 3]]
    [9, 11, 13]
    >>> adder2(5)
    11
    """
    "*** YOUR CODE HERE ***"
    count=0
    def f(b):
        nonlocal count
        result = a+b+count
        count+=1
        return result
    return f

def make_fib():
    """Returns a function that returns the next Fibonacci number
    every time it is called.

    >>> fib = make_fib()
    >>> fib()
    0
    >>> fib()
    1
    >>> fib()
    1
    >>> fib()
    2
    >>> fib()
    3
    >>> fib2 = make_fib()
    >>> fib() + sum([fib2() for _ in range(5)])
    12
    >>> from construct_check import check
    >>> # Do not use lists in your implementation
    >>> check(this_file, 'make_fib', ['List'])
    True
    """
    "*** YOUR CODE HERE ***"
    def fib_helper(count):
        if count==0:
            return 0
        elif count==1:
            return 1
        else:
            return fib_helper(count-1)+fib_helper(count-2)
    count=0
    def inner_fib():
        nonlocal count
        result = fib_helper(count)
        count+=1
        return result
    return inner_fib


def insert_items(lst, entry, elem):
    """
    >>> test_lst = [1, 5, 8, 5, 2, 3]
    >>> new_lst = insert_items(test_lst, 5, 7)
    >>> new_lst
    [1, 5, 7, 8, 5, 7, 2, 3]
    >>> large_lst = [1, 4, 8]
    >>> large_lst2 = insert_items(large_lst, 4, 4)
    >>> large_lst2
    [1, 4, 4, 8]
    >>> large_lst3 = insert_items(large_lst2, 4, 6)
    >>> large_lst3
    [1, 4, 6, 4, 6, 8]
    >>> large_lst3 is large_lst
    True
    """
    "*** YOUR CODE HERE ***"
    def inner_helper(lst,index):
        print('DEBUG',lst)
        print('DEBUG',entry)
        if index >= len(lst):
            pass
        elif lst[index]==entry:
            lst_bck=list(lst[index+1:])
            lst[index+1:]=[]
            lst.append(elem)
            print('DEBUG',lst)
            lst.extend(lst_bck)
            print('DEBUG',lst)
            inner_helper(lst,index+2)
        else:
            inner_helper(lst,index+1)
        print('DEBUG','last lst',lst)
    inner_helper(lst,0)
    return lst


