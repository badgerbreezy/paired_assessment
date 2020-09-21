class Employee
  attr_reader :name, :age, :traits
  def initialize(traits)
    @name = traits[:name]
    @age = traits[:age]
    @salary = traits[:salary]
  end
end
