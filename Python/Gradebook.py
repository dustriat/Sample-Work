last_semester_gradebook = [["politics", 80], ["latin", 96], ["dance", 97], ["architecture", 65]]

#create lists 
subjects = ["physics", "calculus", "poetry", "history"]
grades = [98, 97, 85, 88]

#create two-dimensional list
gradebook = [["physics", 98], ["calculus", 97], ["poetry", 85], ["history", 88]]
print(gradebook)
print()

#alt_gradebook = zip(subjects, grades)
#print(list(alt_gradebook))

#add to list
gradebook.append(["computer science", 100])
gradebook.append(["visual arts", 93])

#modify list
gradebook[5][1] += 5
gradebook[2].remove(85)
gradebook[2].append("Pass")
print(gradebook)
print()

#combine list
full_gradebook = last_semester_gradebook + gradebook
print(full_gradebook)
