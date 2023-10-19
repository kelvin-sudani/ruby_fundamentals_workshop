user  = "Kelvin"
def log(greet, name = "Jane Doe")
    # user  = "John"
    puts "inside fn #{user}" # cannot access the variables defined outside the fucntion
    puts "#{greet}, #{name}"
    final_value = greet + name
    return "return value"
end


puts "before: outside fn #{user}"
val1 = log("Hi","There")
puts "after: outside fn #{user}"
puts val1

puts "using default arg value"
val2= log("Hi")
puts val2