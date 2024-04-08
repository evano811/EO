#Evan O'Neill
#September 26, 2022
#Homework 3-1
#Computing the difference between the fastest and slowest car using lists

n = int(input('How many cars passed the sensor? '))
speedList = []
i = 0

while i < n:
    s = int(input("Enter speed for car " + str(i + 1) + ': '))
    speedList.append(s)
    i = i + 1

j = 0

#Finding Largest Number in List
for i in speedList:
    if i > j:
        j = i


k = j
#Finding Smallest Number in List

for i in speedList:
    if i < k:
        k = i

finalValue = j - k

print('The difference in speed between the fastest car and the slowest car is ', finalValue, 'mph')
