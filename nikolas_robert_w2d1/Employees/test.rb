require_relative "manager"
require_relative "employee"

david = Employee.new(10000)
shawna = Employee.new(12000)
darren = Manager.new(78000, david, shawna)
ned = Manager.new(1000000, darren, shawna, david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000