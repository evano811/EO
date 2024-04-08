#Evan O'Neill
#September 26, 2022
#Homework 3-2
#Finding every nth height in a list

i = 0
heightList = []

#Get heights from user while -1 not in list
while -1 not in heightList:
    h = float(input('Enter height (-1 to quit): '))
    heightList.append(h)
    i = i + 1

heightList.remove(-1)

newList = []

n = int(input('Enter n (sampling every nth height): '))

#Appends value to newList if it's index divided by 3 returns no remainder
for j in range(0,len(heightList)):
    if j % n == 0:
        newList.append(heightList[j])

print('The sampled list is: ')
print(newList)
    
    
