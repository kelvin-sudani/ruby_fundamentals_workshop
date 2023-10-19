# Internal Type Conversion
num1 = 10
num2 = 5.5

result = num1 + num2
puts result # Output: 15.5

# External Type Conversion
num3 = "20"
num4 = "10.5"

sum = num3.to_i + num4.to_f
puts sum # Output: 30.5


# to_i for string, float and array
str_num = "10"
float_num = 10.5
array = [1, 2, 3]

int_num = str_num.to_i
puts int_num # Output: 10

int_num = float_num.to_i
puts int_num # Output: 10

int_num = array.to_i
puts int_num # Output: 0 (Array cannot be directly converted to an integer)

# to_f for string, integer and array
str_num = "10.5"
int_num = 10
array = [1, 2, 3]

float_num = str_num.to_f
puts float_num # Output: 10.5

float_num = int_num.to_f
puts float_num # Output: 10.0

float_num = array.to_f
puts float_num # Output: 0.0 (Array cannot be directly converted to a float)


# to_s for integer, float and array
int_num = 10
float_num = 10.5
array = [1, 2, 3]

str_num = int_num.to_s
puts str_num # Output: "10"

str_num = float_num.to_s
puts str_num # Output: "10.5"

str_num = array.to_s
puts str_num # Output: "[1, 2, 3]"


# to_a for integer, float and string
str = "Hello"
int_num = 10
float_num = 10.5

array = str.to_a
puts array.inspect # Output: ["H", "e", "l", "l", "o"]

array = int_num.to_a
puts array.inspect # Output: [10]

array = float_num.to_a
puts array.inspect # Output: [10.5]


