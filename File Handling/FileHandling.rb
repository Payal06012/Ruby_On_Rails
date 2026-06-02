
# # not recommand to use due to expluicitly neede to close it
file_obj = File.new("tutorials.txt", "w+")
file_obj.syswrite("This file contains knowledge!")
file_obj.close


# # for quick file craetion
# str = "hello ruby, This is a .txt file"
# File.write("exampel.txt" , str)

# #best and safest way to craete file 
# #to read and read both using a open block we have to give permission 

# f1 = File.open("abc.txt" , "w") do |file|
#     puts file      # print file path or metadata and am actuial text of file
#     file.puts "hello Ruby"
#     file.write "it is developers friendly langusge"
#     content = file.read      
#     puts content 
#     file << "writye a string directly"
# end

# # c1 = f1.read           # we cannot use the ead methid in the oject return by it 
# # puts c1

# # content = File.read("abc.txt")
# # puts content 

# # File.rename("exampel.txt" , "exam.txt")
# # File.delete("exam.txt")

# # exist = File.exist? "abc.txt"
# # puts exist

#==================== w+ =======================================

#truncate the file content and overwrite it (w+)

# File.open("example1.txt", "w+") do |f|
#     puts f.read        # not show  content because it trunate the file
# f.write "Digital"
#     f.rewind 
#     c = f.read
#     puts c 

# end

#=======   r+ =================================

# differ from w+ as if the file is not exist it throw an error 
# differ from a+ as it  point at the begnning 
# overwrite the content where the poiunter exist 

File.open("example1.txt", "r+") do |f| 

    # ponter at begning
    puts " r+ output :  #{f.read}"             # show output 
    
#afer reading pointer point till read content

    f.write "Digital world" 
    f.rewind
    puts f.read
end 

#=============== a and a+ ========================

#point at5 the last 
#craete a file if not exist
#to read the content from first use rewind method

File.open("example1.txt", "a+") do |f|
    f.rewind
    puts " a+ output : #{f.read}"
end
 

# puts  File.read("example.txt")

# File.delete "exampel1.txt"
 