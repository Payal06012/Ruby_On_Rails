
# until loop =============================

# num = 1 

# until num >10 
# puts num
# num += 1
# end 


# sTRINGDS ================================
# string1 = String.new("string")
# puts String.methods
# puts string1.name

#====================aRRAY ===================

# arr = Array.new(10) {|e| e = e *2} 
# puts arr

# arr.methods

array = [1, 2, 3,4, 5, 6, 7, 8, 9, 10]
array.select { |number| number > 4 }

# => [5, 6, 7, 8, 9, 10]
# array
# => [5, 6, 7, 8, 9, 10]

num = array.select{|i| i < 4}
puts num

puts "original Array #{array}"

puts num.class

alpha = ["a",["d","e"],nil ,"b","c",["d","e"]]
# puts alpha.include? "a"
# puts alpha.flatten
# puts alpha.join

# alpha.each do |i| 
#     puts i
# end


# a = "a"
# arr1 = alpha.each {|i|
# puts a }

# puts arr1

# # puts "a"+"b"


#======FOR VS .each loop ==========

for i in (1..5)
    puts i
end
 
puts i

# # Using the .each method with an array
[1, 2, 3].each do |num|
  puts "Inside block: #{num}"
end

begin
  puts "Outside block: #{num}"
rescue NameError => e
  puts "Outside block: #{e}"
end

# (1...7).each do |i|
#     puts i
# end 

# ('a'...'g').each do |a|

#     puts a
# end

# # puts a