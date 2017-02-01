init_array=[[1,2,3,4],[6,1,8,9],[11,12,13,0]]


def setzero(data):
    n=0
    m=0
    k=None

    for i in data:
        m=0
        for j in i:
            if j ==0:
                k=0
                break
            m+=1
        if k ==0:break
        n+=1
    i=0
    j=0
    while i < len(data):
        j=0
        while j <len(data[0]):
            if j==m or i ==n:data[i][j]=0
            j+=1
        i+=1
    print data

setzero(init_array)
