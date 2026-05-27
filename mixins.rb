module A

  def a1
    puts "a1 method"
  end

  class Student
    def info
      puts "Student Info"
    end
  end

end

class Sample
  include A

  def s1
    puts "s1 method"
  end
end

s = Sample.new

s.a1
s.s1

student = A::Student.new
student.info   