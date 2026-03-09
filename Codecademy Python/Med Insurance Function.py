# Create calculate_insurance_cost() function below: 
def calculate_insurance_cost(name, age, sex, bmi, num_of_children, smoker):
  estimated_cost = 250*age - 128*sex + 370*bmi + 425*num_of_children + 24000*smoker - 12500
  print(f"The estimated insurance cost for {name} is ${estimated_cost}.")
  return estimated_cost

# Initial variables for Maria 
#age = 28
#sex = 0  
#bmi = 26.2
#num_of_children = 3
#smoker = 0  

# Estimate Maria's insurance cost
maria_insurance_cost = calculate_insurance_cost("Maria", 28, 0, 26.2, 3, 0)

#print("The estimated insurance cost for Maria is " + str(insurance_cost) + " dollars.")

# Initial variables for Omar
#age = 35
#sex = 1 
#bmi = 22.2
#num_of_children = 0
#smoker = 1  

# Estimate Omar's insurance cost 
omar_insurance_cost = calculate_insurance_cost("Omar", 35, 1, 22.2, 0, 1)

#print("The estimated insurance cost for Omar is " + str(insurance_cost) + " dollars.")

# Estimate personal insurance cost
dustin_insurance_cost = calculate_insurance_cost("Dustin", 36, 1, 26, 1, 0)
