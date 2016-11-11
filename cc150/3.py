def rm_dup(string):
    temp=[]
    for char in string:
        if char not in temp:
            temp.append(char)
    return ''.join(temp)
    '''
    from collections import OrderedDict as od
    return ''.join(od.fromkeys(string))
    '''
print (rm_dup('abababffkljkljlkjljasdfjslkfjqwjfiowjf;j'))
