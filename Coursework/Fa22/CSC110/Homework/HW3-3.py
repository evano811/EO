#Evan O'Neill
#September 26, 2022
#Homework 3-3
#Finding the highest priced artifact in a list of artifacts

n = int(input('How many art works do you have? '))
titleList = []
priceList = []
artistList = []
tempList = []

#Getting prices, names, and artists for n amount of people 
for i in range(n):
    artist = input('Enter artist name: ')
    title = input('Enter title of art work: ')
    price = float(input('Enter price of art work: $'))
    titleList = titleList + [title]
    priceList = priceList + [price]
    artistList = artistList + [artist]

j = 0
k = 0

#Find Highest Priced Item
for i in priceList:
    if i >= j:
        j = i
        k = priceList.index(i)

print('The highest price work is ', titleList[k], "by ", artistList[k], 'at $', '{:.2f}'.format(priceList[k]))
