# # def s1
# #     puts self.object_id
# # end

# # def s2
# #     puts self.object_id
# # end

# # s1()
# # s2()

# class Self
#     def s1 
#         puts self.object_id
#     end

#     def self.abc              # class method can access ithout craeteing onj
#         puts self.object_id
  
#     end
# end

# ob = Self.new()
# ob2 = Self.new()

# ob.s1
# ob2.s1

# Self.abc            #class_name.method


# class Info 
#     def name(name)
#         self.name = name 
#     end
   
#     def action(curr)

#         self.curr = curr

#         puts "current action : #{curr}"
#         puts "writing"
#     end

# end

# class Student < Info
#     def action 
#         puts "lerning"

#         super("walk")
#     end
# end

# # a = Student.new()
# # a.action

# main = Info.new()
# main.name("ruby")

#=======  

class Name 
    #  puts Name.class
    # # @action = "write"        @it is class instance var  but it is not access by the object because it is not instance var of the object
    # puts @action
    # puts self.object_id
    # puts self.class

    #to access the instance variabel suing self we ahve to use getter function  
   attr_accessor :name ,:action   # or def name  end 

    def initialize()
       @name = "same"
    #    puts @name
    #    puts self.name
    end

     def getName(name)
        # puts self.name        
        # self.name  = name
        # puts "instance : #{@name}"
    end

    def action 
          p @act       # it odes not throw error it only return nil because @act is not assigned any value
        puts self.instance_variables     # only show action becsause only action var is calle by the obejct 
        self.action = "paly"             # call action attr method thst contain @action var and assign value to it
        puts self.instance_variables
        # puts "current action : #{@action}"
        # puts self.object_id
        # puts self.class
        # puts "action #{@action}"
    end

end

ob = Name.new
ob.getName("ruby")
ob.action

ob1 = Name.new
ob1.getName("rails")



# class User
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def update_name(new_name)
#     self.name = new_name # "self." tells Ruby to call the name= writer method
#   end
  
#   def self.info # "self." indicates a class method
#     "This is the User class"
#   end
# end




