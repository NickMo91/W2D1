require_relative "employee"

class Manager < Employee

  attr_accessor :salary, :employees
def initialize(salary, *employees)
  @employees = employees
  super(salary)
end


def bonus(multiplier)
  bonus = @employees.map {|el| el.salary} .inject(:+) * multiplier
end

end