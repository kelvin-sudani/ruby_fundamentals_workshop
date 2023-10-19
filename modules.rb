module MyModule
    # Constant
    MY_CONSTANT = 42
  
    # Class variable
    @@my_class_variable = "Hello, world!"
  
    # Class method
    def self.my_class_method
      puts "This is a class method."
    end
  
    # Instance method
    def my_instance_method
      puts "This is an instance method."
    end
  
    # Another instance method that uses the class variable
    def print_class_variable
      puts @@my_class_variable
    end
  
    # Another instance method that uses the constant
    def print_constant
      puts MY_CONSTANT
    end
  end
  
  class MyClass
    include MyModule
  end
  
  my_object = MyClass.new
  my_object.my_instance_method # => "This is an instance method."
  my_object.print_class_variable # => "Hello, world!"
  my_object.print_constant # => 42
  
  MyModule.my_class_method # => "This is a class method."
  