#!/bin/python3

def multiply(m,n):
    """
    >>> multiply(5,3)
    15

    """
    if n==0:
        return 0
    return 5+multiply(m,n-1)


def hailstone(n):
    """

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7

    """
    print(int(n))
    if n==1:
        return 1
    n=n/2 if n%2==0 else n*3+1
    return hailstone(n)+1

def find_largest_digit(number):
    """
    >>> a,b=find_largest_digit(10)
    >>> a
    1
    >>> b
    1
    >>> a,b=find_largest_digit(1235212)
    >>> a
    5
    >>> b
    7
    >>> a,b=find_largest_digit(10000)
    >>> a
    1
    >>> b
    1
    """
    if number==0:
        return 0,0
    digit,count=find_largest_digit(number//10)
    max_digit = digit if digit>(number%10) else number %10
    count += 1 if (number%10)!=0 else 0
    return max_digit,count

def find_largest_digit(number):
    largest_digit,corr_count,non_zero_count,count=0,0,0,0
    while number!=0:
        digit,number=number%10,number//10
        if largest_digit<digit:
            corr_count=count
            largest_digit = digit
        count+=1
        non_zero_count+=1 if digit !=0 else 0
    return largest_digit,corr_count,non_zero_count

def merge(n1,n2):
    """ Merge Two Numebrs

    >>> merge(31,42)
    4321
    >>> merge(21,0)
    21
    >>> merge(21,31)
    3211

    """
    if n1 ==0 and n2==0:
        return 0
    n1_digit,n1_corr_count,n1_nz_count=find_largest_digit(n1)
    n2_digit,n2_corr_count,n2_nz_count=find_largest_digit(n2)
    target_digit=n1_digit if n1_digit > n2_digit else n2_digit
    if target_digit == n1_digit:
        new_n1 =n1-n1_digit*(10**n1_corr_count)
        new_n2 =n2
    else: 
        new_n1 = n1
        new_n2 = n2-n2_digit*(10**n2_corr_count)
    target_count=n1_nz_count+n2_nz_count-1
    return target_digit*(10**target_count) + merge(new_n1,new_n2)


def make_func_repeater(f, x):
    """
    >>> incr_1 = make_func_repeater(lambda x: x + 1, 1)
    >>> incr_1(2) #same as f(f(x))
    3
    >>> incr_1(5)
    6
    """
    def repeat(y):
        if y<=0:
            return x
        else:
            return f(make_func_repeater(f,x)(y-1))
    return repeat

def is_prime(n):
    """
    >>> is_prime(7)
    True
    >>> is_prime(10)
    False
    >>> is_prime(1)
    False
    >>> is_prime(57)
    False
    """
    def prime_helper(k,n):
        if n==1:
            return False
        elif k>=n:
            return True
        else:
            return (False if n%k==0 else True) and  prime_helper(k+1,n)
            
    return prime_helper(2,n)

