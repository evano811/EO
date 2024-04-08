#Evan O'Neill
#September 19th, 2022
#Homework 2-2
#Input that determines lowest golf score

c = 0
score = 1000

while c < 9:
    s = int(input('Enter score: '))
    if s < score:
        score = s
        c = c + 1
    else:
        c = c + 1

print('Your lowest score for the three weeks is: ',score)
