import numpy as np
# 1 - What types are legal for subscripts?
# Answer 1: Array subscript type of Python is only integer,
#           and index syntax is brackets.

students = np.array["Dilay", "Arda", "Ozgur", "Eylul"]
print(students[0])
print(students[1])
print(students[2])
print(students[3])

# 2 - Are subscripting expressions in element references range checked?
# Answer 2: Python is checking index range in arrays. When we use 
#           negative index, Python will convert is if that index
#           number is less than length. If we try to print the index
#           that is not exist, we will see the IndexError.
print(students[-1])
print(students[-2])
print(students[-3])
print(students[-4])
print(len(students))
# print(students[9]) ---> IndexError: list index out of range


# 3 - When are subscript ranges bound?
# 4 - When does allocation take place?
# Answer 3 - 4: Python supports heap-dynamic arrays. So that, binding 
#               array subscript and allocating storage is dynamic and
#               done at run time, they can change during execution time. 


# 5 - Are ragged or rectangular multidimensional arrays allowed, or both?
# Answer 5: Both. 
arr1 = np.array[[5, 10, 15], 
                [20, 25, 30], 
                [35, 40, 45]]

arr2 = np.array[['A', 'B', 'C'], 
                ['D', 'E'], 
                ['F']]
print(arr1)
print(arr2)


# 6 - Can array objects be initialized?
# Answer 6: Yes.
colors = np.array["blue", "pink", "white", "black"]
print(colors)


# 7 - Are any kind of slices supported?
# Answer 7: Yes.
colors_vol2 = np.array["red", "green", "orange", "yellow"]
print(colors_vol2[1:3])
print(colors_vol2[2:4])
print(colors_vol2[1::2])


# 8 - Which operators are provided?
# Answer 8: Identity operators which are "is", "is not"
#           and also "+", "-", "*", "/" operators are
#           provided. 
nums1 = np.array[1, 2, 3, 4, 5]
nums2 = np.array[6, 7, 8, 9]
print(nums1 + nums2)
print(nums2 - nums1)
print(nums1 * nums2)
print(nums1 / nums2)
print(nums1 is nums2)
print(nums1 is not nums2)
