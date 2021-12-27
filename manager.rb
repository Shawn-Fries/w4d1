class Manager < Employee
    attr_reader :employees

    def initialize(employees)
        @employees = employees
    end

    def bonus(multiplier)
        super + @employees.sum {|employee| employee.salary * multiplier}
    end
end