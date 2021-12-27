require_relative "Employee.rb"
class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multiplier)
        super + @employees.sum {|employee| employee.salary * multiplier}
    end
end

david = Employee.new("david", "TA", 10000, "darren")
shawna = Employee.new("shawna", "TA", 12000, "darren")
darren = Manager.new("darren", "TA Manager", 78000, "ned", [david, shawna])
ned = Manager.new("ned", "Founder", 1000000, nil, [darren])



p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000