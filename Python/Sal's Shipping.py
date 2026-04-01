#Prompt for weight input
weight = input("Package weight?")
print("If the package weighs", weight,"pounds:")

#Ground shipping
if weight <= 2:
  price_per_pound = 1.5
elif weight <= 6:
  price_per_pound = 3
elif weight <= 10:
  price_per_pound = 4
else:
  price_per_pound = 4.75
#print(price_per_pound)

ground_price = 20.00 + price_per_pound * weight
print("Ground shipping will cost $", f"{ground_price: .2f}")

#Premium shipping
premium_price = 125.00
print("Premium shipping will cost $", f"{premium_price: .2f}")

#Drone shipping
if weight <= 2:
  price_per_pound = 4.5
elif weight <= 6:
  price_per_pound = 9
elif weight <= 10:
  price_per_pound = 12
else:
  price_per_pound = 14.25
#print(price_per_pound)

drone_price = price_per_pound * weight
print("Drone shipping will cost $", f"{drone_price: .2f}")

#Recommendation
if ground_price <= premium_price and ground_price <= drone_price:
    print("Ground shipping is the cheapest option.")
elif premium_price <= ground_price and premium_price <= drone_price:
    print("Premium Ground shipping is the cheapest option.")
else:
    print("Drone shipping is the cheapest option.")
