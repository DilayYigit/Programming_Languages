# Question 1: How are the boolean values represented?
# Answer 1: ==, <=, >=, <, >, != are boolean expressions in Python.
x = 5
y = 6
z = 5
w = 12

print(x == z)
print(x <= y)
print(y != w)
print(w >= z)
print(y < x)
print(w > x)
print(type(True))
print(type(False))
print("\n")


# Question 2: What operators are short-circuited?
# Answer 2: and, or operators are exist in Python. 

def name():
    return "Dilay"

def surname():
    i = "Yigit"
    return i

print(0 and name())
print(1 and name())
print(0 or name())
print(1 or name())
print(0 or name() and 1)
print(name() or surname() and 1)

# Question 5: What are the potential problems about short-circuit evaluation?
# Answer 5: In some cases, second condition has to be executed but code will not
#           consider this function call.
def check():
    print("This function has to be executed.")

print(1 or check())