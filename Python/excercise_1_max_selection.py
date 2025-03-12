#Write a Python function to find the maximum element in a list of numbers without using the built-in `max()` function.
#If the input list is None or it is empty list, the return value must be None.

# Requirements:
# - Returns greatest element of a list of numbers
# - In case of None input returns None
# - In case of Empty input string, returns None

numbers=[1,2,6,3,7,9,195]

def get_max(numbers:list) -> int:

    if numbers==[] or numbers==None:
        return None
    
    biggest=numbers[0]

    for i in numbers:
        if i> biggest:
            biggest=i

    return biggest

print (get_max(numbers))