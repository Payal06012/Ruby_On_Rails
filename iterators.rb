# difference in {} and do ...each

arr =[1,2,3,4]

  x = arr.each do |i|   
    i *2
end

puts x

# arr.each {|i|  puts i}

# Evaluates as: puts ( [1, 2, 3].map { |n| n ** 2 }.first )
# Result: Throws an error (LocalJumpError or NoMethodError)
 [1, 2, 3].map { |n| n ** 2 }.first  # {} tightly bound


 b = [1,2,3,4].map {|i| puts i } 
 puts b.first

# Evaluates as: ( [1, 2, 3].map do |n| n ** 2 end ).first
# Result: 1 (returns the first element of the new array)
[1, 2, 3].map do |n| 
  n ** 2 
end.first


# ========differce in each map =====

# 3.0.4 :019 > x = arr.each {|i| i*2}
#  => [1, 2, 3, 4] 
# 3.0.4 :020 > puts x 
# 1
# 2
# 3
# 4
 
# 3.0.4 :021 > x = arr.map {|n| n*2}
#  => [2, 4, 6, 8] 
# 3.0.4 :022 > puts x
# 2
# 4
# 6
# 8


#===============accessing block in itretor ====

# def my_each(array)
#   i = 0
#   while i < array.length
#     yield(array[i]) # Passes the current element to the block
#     i += 1
#   end
# end

# my_each([1, 2, 3]) { |num| puts num * 2 }

def print_name
    puts "abs"
    yield(1)
    yield(5)
    yield
end

print_name  {puts "a"}  
print_name { |i| puts i}
print_name  {puts "b"}  
# print_name             throw an error if we call method without block 


#=======

# def use_proc( a , proc)
#     puts a
#     proc.call
# end

# proc = Proc.new {puts "procs"}

# proc.call

# use_proc( "abc" , proc)

arr = [1,2,3,4]
a = arr.select {|i| i>2 }
puts a 