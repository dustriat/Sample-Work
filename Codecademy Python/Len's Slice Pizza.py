# Your code below:
toppings = ["pepperoni", "pineapple", "cheese", "sausage", "olives", "anchovies", "mushrooms"]
prices = [2, 6, 1, 3, 2, 7, 2]
pizza_and_prices = list(zip(prices, toppings))

# list check
#print(pizza_and_prices)
#print()

num_two_dollar_slices = sum(row.count(2) for row in pizza_and_prices)
print(f"We sell {num_two_dollar_slices} different pizzas for $2!")
print()

num_pizzas = len(pizza_and_prices)
print(f"We sell {num_pizzas} total kinds of pizza!")
print()

pizza_and_prices.sort()
# list check
#print(pizza_and_prices)
#print()

cheapest_pizza = pizza_and_prices[0]
print(f"Our cheapest pizza is {cheapest_pizza[1]} and only costs ${cheapest_pizza[0]}!!")
print()

priciest_pizza = pizza_and_prices[-1]
print(f"Our most expensive pizza is {priciest_pizza[1]} and costs an impressive ${priciest_pizza[0]}!")
print()

# update pizza and price list
sold_out = pizza_and_prices.pop(-1)
pizza_and_prices.insert(4, (2.5, "peppers"))
print(f"We are sold out of {sold_out[1]}, but have added the new topping {pizza_and_prices[4][1]}! And it's only ${pizza_and_prices[4][0]:.2f}!!")
print()

# list check
#print(pizza_and_prices)
#print()

three_cheapest = pizza_and_prices[:3]
print(f"Our three cheapist pizzas are {pizza_and_prices[0][1]}, {pizza_and_prices[1][1]}, and {pizza_and_prices[2][1]}!")
total_cost_three_cheapest = sum(price[0] for price in three_cheapest)
print(f"One slice of each will cost only ${total_cost_three_cheapest}!")
