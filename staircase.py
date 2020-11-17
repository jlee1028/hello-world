def staircase(n):
    for i in range(1, n):
        x = n - i
        print(x*' ', i*'#')

staircase(10)
