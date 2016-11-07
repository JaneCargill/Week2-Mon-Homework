class Person

  attr_reader :name, :age

  def initialize (name, age)
    @age = age
    @name = name
  end

  def name_of_person()
    return @name
  end

  def age_of_person()
    return @age
  end

end