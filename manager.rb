class Manager < Employee
    attr_reader :employees

    def initialize(employees)
        @employees = employees
    end

    def bonus(multiplier)
        super + @employees.sum {|employee| employee.salary * multiplier}
    end
end





ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000