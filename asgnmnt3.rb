module Detail
  def display
    if self.class == Student
      puts "\n\nSTUDENT DETAILS"
      puts "name::#{name}"
      puts "age::#{age}"
      puts "address::#{addr}"
    elsif self.class == Subject
      puts "\n\nSUBJECT DETAILS"
      puts "subject name::#{name}"
      puts "total marks::#{total}"
    end
  end
end

class Student
include Detail
attr_accessor :name,:age,:addr
  def initialize(name,age,addr)
    @name = name
    @age = age
    @addr = addr
  end
end

class Subject
include Detail
attr_accessor :name,:total
  def initialize(name,total)
    @name = name
    @total = total
  end
end


std1 = Student.new("nimmi",22,"abc")
sub = Subject.new("maths",78)
std1.display
sub.display

