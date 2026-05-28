# begin
#   # Code that might cause an error
#   result = 10 / 0
# rescue ZeroDivisionError => e
#   # Code to run if that specific error happens
#   puts "Error: #{e.message}"
# else
#   # Code to run only if NO exception was raised
#   puts "Success! Result is #{result}"
# ensure
#   # Code that ALWAYS runs (e.g., closing a file)
#   puts "This always executes."
# end

#=========== Handle all exception without calling individually

# begin 
#     13/0
#     puts "may contain error"
# # raise NoMethodError.new("name Errror")
# # puts "exception"

# # rescue StandardError =>e       #or by using th main class it automatically handel tyhe exaceptiuon of iys subclass
# rescue => e
#     puts e.message
# else                       # always preset between rescue and ensure
#     puts "run when their is n exception"
# ensure
#     puts "always run"
# end



#==========build custom exceptiuon calss and used retry method

# class NetworkError < StandardError

# end

# begin 
#     puts "Network issue"

#     a = 1
#    if a == 2
#     raise networkError.new()
#    else 
#     puts "clear"
#    end
# rescue =>e
#     puts "error"
# retry                      #used to solve unusual issue
# end

#======= Exception mETHODS=============

begin
    1/0

rescue => e
puts "message #{e.message}"
puts e.backtrace            
puts e.to_s

end

#cause error

#============ cause method of exception 

begin

begin 
    raise "original error"
rescue => e
  puts e.message

  raise "new ERROR"
end

rescue => e
    puts e.message
    puts "cause by #{e.cause}"
end


# ========== throw and catch block======

# result = catch(:value) do 
#   a = 1 

#   while(a <= 10)
#     if a == 5
#     throw(:value  , a) 
#     end
#     a += 1
#   end
# end



# puts result 

# a = 1 
# while a <= 10 
#     puts a 
#     a+= 1
# end 

# ================ braek vs thorw catch ==============

# braek jump from current loop

# [1,2,3].each do |i|
#    puts i 

#    [1,2,3].each do |j|
#      puts "j : #{j}"
#     sum  = i +j 
    
#     if sum == 4
#         break 
#     end

#    end
# end


#out 
#j : 1
# j : 2
# j : 3
# 2
# j : 1
# j : 2
# 3
# j : 1
# 1
# j : 1
# j : 2
# j : 3

# ==== using throw =============

# it jump from directly out from all the nexted loop
 
catch(:value) do

[1,2,3].each do |i|
   puts i 

   [1,2,3].each do |j|
     puts "j : #{j}"
    sum  = i +j 
    
    if sum == 4
        throw :value , sum 
    end

   end
end

end

#out put 
# rails@rails:~/Ruby Practice$ ruby Exception.rb 
# 5
# 1
# j : 1
# j : 2
# j : 3

#
#===============

