# $LOAD_PATH << '.'

# #WE CAN ALSO USE require_relative to search file in current directory

# require 'module'

require_relative 'module'

s1 = School::Student.new 
s1.instanceMethod

# School::ruby
School::Student::classMethod






