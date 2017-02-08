class Person

  def self.group
    [
      Person.new("Sam", 25),
      Person.new("Alex", 35),
      Person.new("Max", 30),
      Person.new("Bo", 27)
    ]
  end


  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Employee < Person
  def initialize(name, age)
    super
    @salary = 100000000000

    self
  end
end


