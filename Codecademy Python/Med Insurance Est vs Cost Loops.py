names = ["Judith", "Abel", "Tyson", "Martha", "Beverley", "David", "Anabel"]
estimated_insurance_costs = [1000.0, 2000.0, 3000.0, 4000.0, 5000.0, 6000.0, 7000.0]
actual_insurance_costs = [1100.0, 2200.0, 3300.0, 4400.0, 5500.0, 6600.0, 7700.0]

#Determine average insurance cost per person
total_cost = 0
for cost in actual_insurance_costs:
  total_cost += cost
average_cost = round(total_cost / len(actual_insurance_costs), 2)
print(f"Average Insurance Cost: ${average_cost:.2f}.")
print()

total_cost_alt = 0
index = 0
while index < len(actual_insurance_costs):
  total_cost_alt += actual_insurance_costs[index]
  index += 1
average_cost_alt = round(total_cost_alt / len(actual_insurance_costs), 2)
print(f"Average Insurance Cost Alt: ${average_cost_alt:.2f}.")
print()

#Is individual cost above or below average
for i in range(len(names)):
  name = names[i]
  insurance_cost = actual_insurance_costs[i]
  difference = abs(insurance_cost - average_cost)
  print(f"The insurance cost for {name} is ${insurance_cost:.2f}.")
  if insurance_cost > average_cost:
    print(f"{name}, your insurance cost is ${difference:.2f} above average.")
  elif insurance_cost < average_cost:
    print(f"{name}, your insurance cost is ${difference:.2f} below average.")
  else:
    print(f"{name}, your insurance cost is the average.")
  print()

updated_estimated_costs = [round(cost * 1.1, 2) for cost in estimated_insurance_costs]
print(updated_estimated_costs)
