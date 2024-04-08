#Evan O'Neill
#October 10, 2022
#Homework 4-2
#Takes a string and returns all possible substrings of a certain length


def subString(string, integer):
    stringList = []
    #Creates 2 counters, one that dictates the length of the while loop, and another that dictates the length of the substrings input by the user
    i = 0
    x = integer
    while i < len(string):
        subStr = string[i:x]
        #Tests if the substring is equal to the integer length, and if true, appends to the stringList
        if len(subStr) == integer:
            stringList.append(subStr)
        x = x + 1
        i = i + 1
    return stringList
