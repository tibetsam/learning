def anagrams(string1,string2):
    if sorted(string1) == sorted(string2):
        return True
    else:
        return False

print (anagrams('cinema','iceman'))
print (anagrams('abcd','abba'))
