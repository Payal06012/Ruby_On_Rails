#Local variable===================

# class Student_info
#     def print_name(name)
#         name = name 
#         puts "Name - #{name}"

#     end
# end
# std1 = Student_info.new
# std1.print_name("john")



#INSTANCE VARIABEL =========================


# class Student_info

#      @@marks = 1

#      def inc_marks(mark)
#         @@marks += mark
#         puts @@marks
#      end

#     def initialize(name)
#     @name = name
#     end


#     def print_address
#         address = 123 
#         # puts "Address - #{address}"

#     end

#      def greet
#         puts "hello #{@name}"   # instance variable
#         # puts "Local variabel Adress #{address}"
#     end


# end
# std1 = Student_info.new("john")
# # std1.print_name("john")
# std1.inc_marks(10)

# std2 = Student_info.new("Aloce")
# std2.print_address
# std2.greet
# std2.inc_marks(10)


# $var =  1
# print "1 -- Value is set\n" if $var
# print "2 -- Value is set\n" unless $var

# $var = false
# print "3 -- Value is set\n" unless $var;


# ===== untiull loop========

# num = 1 
# until num > 5
#     puts "1"
#    num += 1
# end 


# print "hello" unless num = 4


#======

# num = 1
#  begin 
#     put "1"
# num += 1
#  end  while num >5

# numbers = [1, 2, 3]

# numbers.each do |n|
#   puts n
# end

# ============== function methods========

# def sum (num , num1)
#     sum = num + num1
#     puts sum
# end

# sum 1 , 2

# def count (*num)
#     puts num.length 
#     puts num.class
# end
#  count 1 ,2,3,4

#=========alias ================

# class Person
#   def hello
#     puts "Hello"
#   end

#   alias greet hello
# end

# p = Person.new

# p.hello
# p.greet
# p.hello

#==========undef ================

class Parent
  def hello
    puts "Hello"
  end
end

class Child < Parent
  undef hello
end

c = Child.new
c.hello

