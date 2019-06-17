class Employee 

  attr_accessor :salary
def initialize(salary)
  @salary = salary
end

def bonus(multiplier)
  bonus = @salary * multiplier
  bonus
end

end