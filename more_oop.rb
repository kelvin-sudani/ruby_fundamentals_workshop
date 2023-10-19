######## Abstract Class and Method Convention
class Shape
    def area
      raise "This method should be implemented by subclasses."
    end
  
    def perimeter
      raise "This method should be implemented by subclasses."
    end
end
  
########  Method Visibility
class AccessControl
    def public_method
      puts "This is a public method."
    end
  
    protected
  
    def protected_method
      puts "This is a protected method."
    end
  
    private
  
    def private_method
      puts "This is a private method."
    end
  
    def method_missing(name, *args)
      puts "Method '#{name}' does not exist."
    end
end
  
########  Advanced Inheritance and Modules
module ModuleA
    def speak
      puts "ModuleA: Speaking"
    end
end
  
module ModuleB
    def speak
      puts "ModuleB: Speaking"
    end
end
  
class InheritanceExample
    include ModuleA
    include ModuleB
  
    def speak
      puts "InheritanceExample: Speaking"
      super
    end
end
  
########  Method Chaining
class Chainable
    attr_accessor :value
  
    def initialize(value)
      @value = value
    end
  
    def add(number)
      @value += number
      self
    end
  
    def multiply(number)
      @value *= number
      self
    end
 end
  
########  Advanced Singleton Pattern
require 'singleton'
  
class SingletonWithClassMethods
    include Singleton
  
    class << self
      def instance_method
        puts "Instance method of SingletonWithClassMethods"
      end
    end
end
  
########  Meta-Programming
class DynamicClass
    def self.create_new_method(name, &block)
      define_method(name, &block)
    end
end
  
########  Method Missing
class MissingMethod
    def method_missing(name, *args)
      puts "Method '#{name}' does not exist."
    end
end
  
  # Using the above classes
  shape = Shape.new
  # Uncomment the following line to demonstrate method visibility:
  # access = AccessControl.new
  
  inheritance_example = InheritanceExample.new
  chainable = Chainable.new(10)
  singleton_instance1 = SingletonWithClassMethods.instance
  singleton_instance2 = SingletonWithClassMethods.instance
  dynamic_class = DynamicClass.new
  missing_method = MissingMethod.new
  
  shape.area  # Raises an error due to the abstract method
  # Uncomment the following lines to demonstrate method visibility:
  # access.public_method
  # access.protected_method
  # access.private_method
  # access.undefined_method
  
  inheritance_example.speak
  chainable.add(5).multiply(2)
  puts "Chainable Result: #{chainable.value}"
  
  # Singleton Pattern with Class Methods
  puts "Are the Singleton instances the same? #{singleton_instance1 == singleton_instance2}"
  singleton_instance1.instance_method
  
  dynamic_class.create_new_method(:new_method) do
    puts "This is a dynamically created method."
  end
  dynamic_class.new_method
  
  # Method Missing
  missing_method.undefined_method
  