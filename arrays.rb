# array methods is ruby
arr = [1, 2, 3, 4, 5]

# list array methods
puts arr.length
puts arr.max
puts arr.min
puts arr.sort
puts arr.reverse
puts arr.first
puts arr.first(3) # first 3
puts arr.last
puts arr.last(4) # last 4
puts arr.include?(3)
puts arr.find(3)
puts arr.count(3)
puts arr.index(3)
puts arr.select {|x| x > 2}
puts arr.uniq().to_s()
puts arr.join("/")
puts "Hello World".split.to_s() # whitespace is the deafult separator
puts "Hello World".split("").to_s() # sapeates by character
puts "Hello World".scan(/\w/).to_s() # passed a regex here that will only return word characters
puts arr.to_s()

# mutates the array
puts arr.push(90)
puts arr.pop()
puts arr.shift()
puts arr.unshift(88)
puts arr.prepend(99)
puts arr.empty?()
puts arr.concat([10, 20, 30,4,3,2,1])
puts arr.to_s()

puts arr.delete_at(0)
puts arr.to_s()

puts arr.delete(3)
puts arr.to_s()

puts arr.delete_if {|x| x > 20}
puts arr.to_s()






