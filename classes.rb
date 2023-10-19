class User
    def initialize(name, email, id)
        @name = name
        @email = email
        @id = id
    end

    def name
        @name
    end

    def email
        @email
    end

    def id
        @id
    end

end


class Admin < User
    def initialize(name, email, id, password)
        super(name, email, id)
        @password = password
    end

    def password
        @password
    end
end

class Customers < User
    def initialize(name, email, id, password)
        super(name, email, id)
        @password = password
    end

    def password
        @password
    end
end

customer1 = Customers.new("customer1", "customer1@customer1.com", 1, "customer1")
puts customer1

rootAdmin = Admin.new("root", "root@root.com", 1, "root")
puts rootAdmin

user1 = User.new("user", "user@user.com", 1)
puts user1


########## Example of composition over inheritance

class User
    def initialize(name, email, id)
        @name = name
        @email = email
        @id = id
    end

    def name
        @name
    end

    def email
        @email
    end 

    def id
        @id
    end

    def get_info
        puts "Name: #{@name}"
        puts "Email: #{@email}"
        puts "ID: #{@id}"
    end

end

class Admin
    def initialize(name, email, id)
        @user = User.new(name, email, id)
    end

    def basic_info
        @user.get_info
    end
end

myadmin = Admin.new("admin", "admin@admin.com", 1)
puts myadmin
myadmin.basic_info()

###### "super" keyword

class Parent
    def greet(name)
      "Hello, #{@name}!"
    end
  end
  
  class Child < Parent
    def greet(name)
      super # equivalent to super(name)
    end
  end
  
  class Grandchild < Parent
    def greet(name)
      super(name) # equivalent to super without any arguments
    end
  end
  
  child = Child.new
  puts child.greet("John") # => "Hello, John!"
  
  grandchild = Grandchild.new
  puts grandchild.greet("John") # => ArgumentError: wrong number of arguments (given 0, expected 1)
  

  # Class with Attributes, Accessors, and Methods
class Person
  attr_accessor :name, :age  # Read and write access to name and age
  attr_reader :ssn  # Read-only access to SSN

  def initialize(name, age, ssn)
    @name = name
    @age = age
    @ssn = ssn
  end

  def introduce
    puts "Hi, I'm #{@name}, and I'm #{@age} years old."
  end

  private

  def personal_info
    "Name: #{@name}, Age: #{@age}"
  end
end

# Inheritance and Method Overriding
class Student < Person
  attr_reader :student_id

  def initialize(name, age, ssn, student_id)
    super(name, age, ssn)
    @student_id = student_id
  end

  def introduce
    super
    puts "I'm a student with ID #{@student_id}."
  end
end

# Composition and Aggregation
class Address
  attr_reader :street, :city

  def initialize(street, city)
    @street = street
    @city = city
  end
end

class Contact
  attr_reader :person, :address

  def initialize(person, address)
    @person = person
    @address = address
  end

  def show_contact_info
    puts "Contact Information:"
    # puts @person.personal_info  # Accessing private method through encapsulation
    puts "Address: #{address.street}, #{address.city}"
  end
end

# Modules and Mixins
module Greetable
  def greet
    puts "Hello, I'm #{@name}!"
  end
end

# Using the above classes and modules
person = Person.new("Alice", 30, "123-45-6789")
student = Student.new("Bob", 20, "987-65-4321", "S12345")
address = Address.new("123 Main St", "Cityville")
contact = Contact.new(person, address)

person.introduce
student.introduce
contact.show_contact_info

# Using a module as a mixin
person.extend(Greetable)
person.greet

# Static Variables (Class Variables)
class MathUtility
  @@pi = 3.14159

  def self.circle_area(radius)
    @@pi * radius**2
  end
end

puts "Circle Area: #{MathUtility.circle_area(5)}"

# Singleton Pattern
require 'singleton'

class SingletonExample
  include Singleton
  attr_accessor :data

  def initialize
    @data = "Initial Data"
  end
end

first_instance = SingletonExample.instance
second_instance = SingletonExample.instance
first_instance.data = "Updated Data"

puts "Is the data the same between instances? #{first_instance.data == second_instance.data}"

# Using Enumerable Module
class ShoppingCart
  include Enumerable
  attr_accessor :items

  def initialize
    @items = []
  end

  def each(&block)
    @items.each(&block)
  end
end

cart = ShoppingCart.new
cart.items = ["Item1", "Item2", "Item3"]

puts "Items in the shopping cart:"
cart.each { |item| puts item }

# Using Procs and Lambdas
add = ->(x, y) { x + y }
multiply = lambda { |x, y| x * y }

puts "Addition: #{add.call(3, 4)}"
puts "Multiplication: #{multiply.call(5, 6)}"

# Implementing a Factory Pattern
class Shape
  def area
    raise "Abstract method not implemented"
  end
end

class Circle < Shape
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end
end

class Square < Shape
  attr_accessor :side

  def initialize(side)
    @side = side
  end

  def area
    @side**2
  end
end

class ShapeFactory
  def self.create_shape(type, *args)
    case type
    when :circle
      Circle.new(*args)
    when :square
      Square.new(*args)
    else
      raise "Invalid shape type"
    end
  end
end

circle = ShapeFactory.create_shape(:circle, 5)
square = ShapeFactory.create_shape(:square, 4)

puts "Circle Area: #{circle.area}"
puts "Square Area: #{square.area}"
