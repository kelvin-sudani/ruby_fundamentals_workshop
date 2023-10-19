puts "Enter a number:"
num = gets.chomp
num = num.to_i 

if num%2 == 0
    puts "Even"
elsif num%2 == 1
    puts "Odd"
elsif num > 0 
    puts "Positive"
elsif num < 0
    puts "Negative"
elsif num == 0
    puts "Zero"
else
    puts "Not a number"
end


print "Enter a number:"
number = gets.to_i
unless number >= 10
  puts "number is less than 10."
end

if !(number >= 10)
    puts "number is less than 10."
else
    puts "number is greater than or equal to 10."
end   

# Loops
# Using a while loop
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

