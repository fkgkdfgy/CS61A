#!/bash/python

def falling(n,k):
    """
    >>> falling(4,2)
    12
    >>> falling(4,0)
    1

    """
    tmp = 1
    while k>0:
        tmp *= n
        n-=1
        k-=1
    return tmp
        
        


