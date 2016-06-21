#classes
​
class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end
​
class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
       	super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
​
    def calculate_salary
    	@hours_worked * @hourly_rate
      	#returns the hours worked * hourly_rate
    end
end
​
class SalariedEmployee < Employee
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end
​
	def calculate_salary
		@salary / 52
	end
end	
​
class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, hourly_rate, hours_worked)
		    @name = name
        @email = email
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
  end
        
    def calculate_salary
    	((@hours_worked - 40) * @hourly_rate) + (@salary / 52)
​
    end
end
​
​
class Payroll
    def initialize(employees)
        @employees = employees
    end
​
  def pay_employees
  		paychecks = []
​
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week.
      @employees.each { |employee|
      	paychecks.push(employee.calculate_salary*0.82)
      	puts"#{employee.name} => $#{employee.calculate_salary*0.82}\n"
      	notify_employee(employee)
      }
  
  sum = paychecks.reduce(0){|acc,curr|acc+curr}
  puts "The total amount spent on payroll this week was #{sum}"
  end
​
  def notify_employee(employee)
​
  		puts "To:#{employee.email}\n Dear#{employee.name},\n You got dough!\n"
​
  end
​
​
end
​