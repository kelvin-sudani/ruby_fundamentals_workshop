
# constants in ruby start with an uppercase letter
Username = "test"
Username = "test1"  # allowed but will show a warning
# constants in ruby are case sensitive  
USERNAME = "test_user"

puts Username == Username # True
puts Username == USERNAME # False


# if - elsif - else
number = 12
if number.even?
    puts "number is even"
elsif number.odd?
    puts "number is odd"
else
    puts "number is neither even nor odd"
end




EMAIL =  "test"
PASSWORD = "12"
PASSWORD_VAULT = { aws: {username: "test", password: "7890"} }

puts "welcome to password manager"
puts "please sign in"
print "email: "
user_email = gets.chomp
puts "entered emali: #{user_email}"
print "password: "
user_password = gets.chomp
puts "entered password: #{user_password}"

if user_email == EMAIL && user_password == PASSWORD
    puts "welcome to password manager"
    puts "Please select an option"
    puts "1. Add new credentials"
    puts "2. Get credentials from a vault"
    puts "3. Update credentials"
    puts "4. Delete credentials"
    puts "5. Exit"

    print "====> Please enter option:"
    user_selection = gets.chomp
else
    puts "invalid email or password"
    exit
end

case user_selection
when "1"
    print "~~ enter the service name: "
    service_name = gets.chomp
    print "~~~~~ enter the username: "
    user_name = gets.chomp
    print "~~~~~ enter the password: "
    user_password = gets.chomp
    PASSWORD_VAULT[service_name.to_sym] = {username: user_name, password: user_password}
    puts "~~ saved: #{PASSWORD_VAULT[service_name.to_sym]}"
when "2"
    puts "~~ Enter the service name:"
    service_name = gets.chomp
    creds = PASSWORD_VAULT.fetch(service_name.to_sym){ |key| "Unknown value for #{key}" }
    puts "~~ Here are the credentials for #{service_name}:"
    creds.each do |key, value|
        puts "#{key}: #{value}"
    end
when "3"
    print "~~ enter the service name: "
    service_name = gets.chomp
    puts "~~~ Current Data: #{PASSWORD_VAULT.fetch(service_name.to_sym){ |key| "Unknown value for #{key}" }}"
    print "~~~~~ enter new username: "
    user_name = gets.chomp
    print "~~~~~ enter new password: "
    user_password = gets.chomp
    PASSWORD_VAULT[service_name.to_sym] = {username: user_name, password: user_password}
    puts "~~ Updated: #{PASSWORD_VAULT[service_name.to_sym]}"
when "4"
    print "~~ enter the service name: "
    service_name = gets.chomp
    PASSWORD_VAULT.delete(service_name.to_sym)
    puts "~~ deleted: #{PASSWORD_VAULT[service_name.to_sym]}"
else 
    puts "exiting.Bye!"
end