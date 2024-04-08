#Evan O'Neill
#September 19th, 2022
#Homework 2-3
#Function that determines average number of bugs collected in a week

c = 0
totalBugs = 0

while c < 7:
    bugsCollected = int(input('How many bugs did you collect on day ' + str(c+1) + '? '))
    totalBugs = totalBugs + bugsCollected
    c = c + 1

averageBugs = totalBugs/7

print('The average number of bugs collected this week is ', '{:,.2f}'.format(averageBugs))
