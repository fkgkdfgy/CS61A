
def divided_nums(a,b):
    """ Return the quotient and remainder of dividing

    >>> a,b = divided_nums(2013,10)
    >>> a
    201
    >>> b
    3
    """

    return a //b , a%b

a,b = divided_nums(10,2)
print('a',a)
print('b',b)
