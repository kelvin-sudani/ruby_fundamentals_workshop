# show a demo on how to use while loop in ruby
i = 0
while i < 5 do
  puts "Value of i: #{i}"
  i += 1
end

# Using a for loop
for j in 0..4 do
  puts "Value of j: #{j}"
end

# Using an each loop with an array
fruits = ["apple", "banana", "orange"]
fruits.each do |fruit|
  puts "I love #{fruit}s!"
end

# show how to use `times` in ruby
10.times do |i|
  puts "Value of i: #{i}"
end

# show how to use `each` in ruby
fruits = ["apple", "banana", "orange"]
fruits.each do |fruit|
  puts "I love #{fruit}s!"
end

# show how to use `each_with_index` in ruby
fruits = ["apple", "banana", "orange"]
fruits.each_with_index do |fruit, index|
  puts "I love #{fruit}s at index #{index}"
end


# for loop vs .each when you modify the array while looping
array = [1, 2, 3, 4, 5]

for element in array
  puts element
  array.pop if element == 3
end


array.each do |element|
  puts element
  array.pop if element == 3
end
