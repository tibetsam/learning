def move(A,B,C,n):
    if n==1:
        print 'Move', A,'---->',C
        return
    move(A,C,B, n-1)
    print 'Move', A, '---->',C
    move(B,A,C, n-1)

