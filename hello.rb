 # puts "hello ruby"
 
 # craeting multiple line of string =============
 
#  print <<EOF 
#  THIS THE WAY OF CRAETING
#   MULTIPLE LOINE STRING.
# EOF
 
 
# print <<EOF
#    This is the first way of creating
#    here document ie. multiple line string.
# EOF

# Basic Command ============

# puts "what is ruby"
# print "write your answer : "
# answer = gets.chomp
# puts "answer :  , #{answer}"
# a  = "ruby"
# puts answer

# ======= varisble =======

age = 25              # Integer
pi = 3.14             # Float
is_ruby_fun = true    # Boolean
name = "Ruby"         # String

MAX_ATTEMPTS = 3      # Constant (can be reassigned, but Ruby will issue a warning)

#====== constant warning ===========


COLORS = ["red", "blue"]

# # This reassigns the constant and will throw the warning
# # COLORS = ["green", "yellow"] 

# # This modifies the object, but doesn't reassign the constant. 
# # Ruby issues NO warning, even though it changed!
COLORS << "purple" 
puts COLORS

# ==== array nad has ===================

# fruits = ["applw", "mango", "banana"]
# puts fruits[2];


# # Array
# fruits = ["apple", "banana", "orange"]
# puts fruits[0] # Outputs: apple

# # Hash
# person = { "name" => "Alice", "age" => 30 }
# puts person["name"] # Outputs: Alice



# Ruby program to illustrate the
# ===Symbols Data Type ================

#!/usr/bin/ruby
# domains = {:sk => "GeeksforGeeks", :no => "GFG", :hu => "Geeks"}

# puts domains[:sk]
# puts domains[:no]
# puts domains[:hu]


#=========CLASSES ==================

#   class Person
#   def initialize(name)
#     @name = name  # Instance variable
#   end

#   def say_hello
#     puts "Hello, #{@name}!"
#   end
# end

# person = Person.new("Alice")
# person.say_hello  # Accessing the instance variable

# person2 = Person.new("john")


class Sum
   @@sum = 0
   def initialize(number)
       number = number
       @@sum += number
   end

   def print_sum
      puts @@sum 
end
end

first = Sum.new(10)
first.print_sum

second = Sum.new(20)
second.print_sum
   