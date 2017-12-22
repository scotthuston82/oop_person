class Person

  def initialize(name)
      @name = name
  end

  def name
    @name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end

end

class Student < Person

  def learn
    puts "I get it"
  end

end

class Instructor < Person

  def teach
    puts "Everything in ruby is an object"
  end
end

nadia = Instructor.new("Nadia")
puts nadia.greeting
chris = Student.new("Chris")
puts chris.greeting
nadia.teach
chris.learn

# chris.teach doesn't work because as a student he only has access to the Student
# methods plus the ones inherited from Person not the ones from Instructor
