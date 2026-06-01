
class Access 

    attr_accessor :name
     puts "instance methods"
    puts self.instance_methods

    def public_method
      print "instance vatiable ===="
      puts self.instance_variables
      puts "public method"
    end

    def access_method(other_obj)
        # name 
        # protect

        puts other_obj

        #other_obj.name        # private cannot be access by instance 
        other_obj.protect
    end

    def access_private
      self.name
        name
    end

    def access_protected
     protect
    end

    def initialize(name)
        @name = name 
    end

 private
    def name
        puts "private  #{@name}"
    end
    protected
    def protect
        puts "protected #{@name}"
    end

end



a = Access.new("ruby")
# a.name       # cant access outsise the class
# a.protect
# a.access_method
# a.access_private
a.public_method         #can be access outrside trhe class


b = Access.new("Rails")
b.access_method(a)



# CHILD =========

class Child < Access
    # puts self.instance_methods

    def initialize
        super("ruby")
        puts "child of Access Class"
    end
end

c1 = Child.new
# c1.access_private
c1.access_method(b)

#===NEW other class =========
class Newclass
  def initialize
    puts "new class"
  end
end

  n = Newclass.new
 


#############3333333333=========

# class User
#   attr_accessor :username, :weight

#   def initialize(username, weight)
#     @username = username
#     @weight = weight
#   end

#   # Public method that acts as our testing environment
#   def compare_data(other_user)
#     # # 1. Test Private Method Calls
#     # secret_id                                # ✅ Works: Implicit receiver
#     # # self.secret_id                             # ❌ Fails: Explicit receiver (NoMethodError)

#     # # 2. Test Protected Method Calls
#     # puts reveal_weight                      # ✅ Works: Implicit receiver
#     puts other_user.reveal_weight           # ✅ Works: Explicit receiver (same class instance)
  
#      puts reveal_weight
#      puts self.reveal_weight

    
#     # p other_user

#     puts other_user
#   puts self.sereate 

    
#   end

#   private

#   def secret_id
#     "INTERNAL_ID_123"
#   end

#   protected

#   def reveal_weight
#     "#{@username}'s weight is #{@weight}kg."
#   end
# end

# # Execution
# alice = User.new("Alice", 60)
# bob = User.new("Bob", 75)

# alice.compare_data(bob)



