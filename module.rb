module School

  # def self.ruby 
  #   puts "ruby"
  # end 

  class Student

    @@schoolName = "SFS"
    

    def self.classMethod
      puts "Class Method"
    end

  def instanceMethod
    puts "IOnstanceMethod"
end

   def school
    puts"schoolName = #{@@schoolName}"
  end


end
end

# module College
#   class Student
#     puts "college student"
#   end
# end

# School::Student
# College::Student

# School.ruby
# School::ruby   

