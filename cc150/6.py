init_array=[[1,2,3,4],[6,7,8,9],[11,12,13,14],[16,17,18,19]]


for i in init_array:
    print i

def rotate(data):
    #anti-clockwise rotation 90c
    #return [list(x) for x in zip(*data)][::-1]
    #rotate 180c
    #return [list(x)[::-1] for x in data[::-1]]
    #clockwise rotation  90c
    #return [list(x)[::-1] for x in zip(*data)]
       
    n=len(data)
    m=len(data[0])
    i=0
    j=0
    temp=[]
    while i<n:
        j=i+1
        while j<m:
            temp=data[i][j]
            data[i][j]=data[j][i]
            data[j][i]=temp
            j+=1
        i+=1
    return data[::-1]

            
print '********'
for i in rotate(init_array):
    print i
'''

def onesix(matrix):
    #'''
    #Given an image represented by an NxN matrix, where each pixel in the image is 4
    #bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
'''
    # go in layers and do a 4-way swap on pixels
    if not matrix:
        return matrix
    n = len(matrix[0])
    for layer in range(n/2):
        first = layer
        last = n - 1 - layer
        for i in range(first, last):
            offset = i - layer
            # top = matrix[layer][i]
            # left = matrix[last-offset][layer]
            # right = matrix[i][last]
            # bottom = matrix[last][last-offset]
            # temp = top
            temp = matrix[layer][i]
            # top = left
            matrix[layer][i] = matrix[last-offset][layer]
            # left = bottom
            matrix[last-offset][layer] = matrix[last][last-offset]
            # bottom = right
            matrix[last][last-offset] = matrix[i][last]
            # right = temp
            matrix[i][last] = temp
    return matrix
print onesix(init_array)
'''
