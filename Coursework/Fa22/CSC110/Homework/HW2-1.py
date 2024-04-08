#Evan O'Neill
#September 19th, 2022
#Homework 2-1
#Input that determines discounted price per item


price = float(input('Enter amount of sale: '))

if price > 4000:
    discount = price * 0.4
    final = price - discount
elif price > 2000 and price <= 4000:
    discount = price * 0.3
    final = price - discount
elif price > 1000 and price <= 2000:
    discount = price * 0.2
    final = price - discount
else:
    discount = price * 0.1
    final = price - discount

print('$The final sale amount is $ ', '{:,.2f}'.format(final))
