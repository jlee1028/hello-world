def fibo_recursive(n):
    '''
    Uses recursion to return the nth number in the fibonacci sequence.
    Below is an intuitive demonstration of how it works:

    f(5) = f(4) + f(3) == 3

    f(4) = f(3) + f(2) == 2

    f(3) = f(2) + f(1) == 1

    f(2) = 1

    f(1) = 0
    '''
    if n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        return fibo_recursive(n-1) + fibo_recursive(n-2)