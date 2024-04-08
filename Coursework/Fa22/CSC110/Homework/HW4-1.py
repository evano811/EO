#Evan O'Neill
#October 10, 2022
#Homework 4-1
#Finding out which golfers made the cut in a golf tournament

#Gets the golfers names and scored from the user
def getData():
    nameList = []
    scoreList = []
    i = 0
    num = int(input('How many golfers are in the tournament? '))
    while i < num:
        name = input('Enter golfer name: ')
        nameList.append(name)
        score = int(input('Enter golfer score: '))
        scoreList.append(score)
        i = i + 1
    return nameList, scoreList

#Determines who made the cut by comparing the score to the cut threshold
def whoMadeCut(scoreList, cut):
    indexList = []
    for i in range(0, len(scoreList)):
        if scoreList[i] <= cut:
            indexList.append(i)
    return indexList

#Prints if golfers made the cut, and if so, prints the golfers and their scores
def printResults(indexList, nameList, scoreList):
    if len(indexList) < 1:
        print('No players made the cut.')
    else:
        print('The players who made the cut are:')
        for i in indexList:
            print(nameList[i], 'with score: ', scoreList[i])
    return

def main():
    nameList, scoreList = getData()
    cut = int(input('Enter cut score: '))
    indexList = whoMadeCut(scoreList, cut)
    printResults(indexList, nameList, scoreList)
    return
