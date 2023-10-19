my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
puts my_hash["name"] # Output: John
puts my_hash[:name] # Output: John

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
my_hash["age"] = 25
puts my_hash["age"] # Output: 25

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
keys = my_hash.keys
puts keys.inspect # Output: ["name", "age", "city"]

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
values = my_hash.values
puts values.inspect # Output: ["John", 30, "New York"]

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
my_hash.delete("age")
puts my_hash.inspect # Output: {"name"=>"John", "city"=>"New York"}

my_hash = { "name" => "John", "age" => 30 }
other_hash = { "city" => "New York", "country" => "USA" }
my_hash.merge!(other_hash)
puts my_hash.inspect # Output: {"name"=>"John", "age"=>30, "city"=>"New York", "country"=>"USA"}

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }
my_hash.clear
puts my_hash.inspect # Output: {}

my_hash = { "name" => "John", "age" => 30, "city" => "New York" }

############ Iterating over key-value pairs
my_hash.each do |key, value|
  puts "#{key}: #{value}"
end
# Output:
# name: John
# age: 30
# city: New York

############ Iterating over keys
my_hash.each_key do |key|
  puts key
end
# Output:
# name
# age
# city

############ Iterating over values
my_hash.each_value do |value|
  puts value
end
# Output:
# John
# 30
# New York


############ set deafult values
my_hash = Hash.new("Not found")
puts my_hash["name"] # Output: Not found

my_hash.default = "Default value"
puts my_hash["age"] # Output: Default value

############ passing as methods arguments
def greet_person(name:, age:)
  puts "Hello, #{name}! You are #{age} years old."
end

person_info = { name: "John", age: 30 }
# greet_person(person_info)
# Output: Hello, John! You are 30 years old.


############ Comparision or equality
hash1 = { name: "John", age: 30 }
hash2 = { age: 30, name: "John" }

puts hash1 == hash2 # Output: true

############ fetch : retrives the value of a key. if the key is not found, it returns nil. You can also provide a default value.
my_hash = { name: "John", age: 30, city: "New York" }

# Example 1: Fetching an existing key
puts my_hash.fetch(:name) # Output: John

# Example 2: Fetching a non-existent key with a default value
puts my_hash.fetch(:country, "Unknown") # Output: Unknown

# Example 3: Fetching a non-existent key with a block
puts my_hash.fetch(:country) { |key| "Unknown value for #{key}" } # Output: Unknown value for country


############ select: Creates a new hash with key-value pairs from the original hash that satisfy a given condition.
my_hash = { name: "John", age: 30, city: "New York" }

# Example: Selecting key-value pairs based on a condition
new_hash = my_hash.select { |key, value| value.is_a?(String) }
puts new_hash.inspect # Output: {:name=>"John", :city=>"New York"}

############ reject: Creates a new hash with key-value pairs from the original hash that do not satisfy a given condition.
my_hash = { name: "John", age: 30, city: "New York" }

# Example: Rejecting key-value pairs based on a condition
new_hash = my_hash.reject { |key, value| value.is_a?(String) }
puts new_hash.inspect # Output: {:age=>30}

############ transform_keys: Creates a new hash by applying a transformation to the keys of the original hash.
my_hash = { name: "John", age: 30, city: "New York" }

# Example: Transforming keys to strings
new_hash = my_hash.transform_keys { |key| key.to_s }
puts new_hash.inspect # Output: {"name"=>"John", "age"=>30, "city"=>"New York"}


############ transform_values: Creates a new hash by applying a transformation to the values of the original hash.
my_hash = { name: "John", age: 30, city: "New York" }

# Example: Transforming values to uppercase
new_hash = my_hash.transform_values { |value| value.to_s.upcase }
puts new_hash.inspect # Output: {:name=>"JOHN", :age=>"30", :city=>"NEW YORK"}


############ merge: Combines two hashes, merging the key-value pairs. If a key is present in both hashes, the value from the hash being merged will overwrite the value in the receiver hash.
hash1 = { name: "John", age: 30 }
hash2 = { city: "New York", country: "USA" }

# Example: Merging two hashes
merged_hash = hash1.merge(hash2)
puts merged_hash.inspect # Output: {:name=>"John", :age=>30, :city=>"New York", :country=>"USA"}


############ Hash conversion with to_a and to_h: You can convert a hash to an array of key-value pairs using the to_a method. Similarly, you can convert an array of key-value pairs to a hash using the to_h method. Here are examples of both conversions:
my_hash = { "name" => "John", "age" => 30, "city" => "New York" }

############ Convert hash to array
array = my_hash.to_a
puts array.inspect
# Output: [["name", "John"], ["age", 30], ["city", "New York"]]

############ Convert array to hash
new_hash = array.to_h
puts new_hash.inspect
# Output: {"name"=>"John", "age"=>30, "city"=>"New York"}

########### Hash iteration with each_with_index: If you need to iterate over a hash and access both the key and value, you can use the each_with_index method. It provides an index parameter in addition to the key-value pairs. Here's an example:
my_hash = { "name" => "John", "age" => 30, "city" => "New York" }

my_hash.each_with_index do |(key, value), index|
  puts "Index: #{index}, Key: #{key}, Value: #{value}"
end
# Output:
# Index: 0, Key: name, Value: John
# Index: 1, Key: age, Value: 30
# Index: 2, Key: city, Value: New York

############ nested hash
my_hash = {
  name: "John",
  age: 30,
  address: {
    street: "123 Main St",
    city: "New York",
    country: "USA"
  }
}
puts my_hash[:name] # Output: John
puts my_hash[:age] # Output: 30
puts my_hash[:address][:city] # Output: New York

my_hash[:address][:city] = "San Francisco"
puts my_hash.inspect # Output: {:name=>"John", :age=>30, :address=>{:street=>"123 Main St", :city=>"San Francisco", :country=>"USA"}}

puts my_hash[:nothing]