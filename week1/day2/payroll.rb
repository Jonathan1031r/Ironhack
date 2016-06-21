require_relative("lib/classes.rb")
​
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
sebas = HourlyEmployee.new('Sebastian', 'nachoemail@example.com', 55, 50)
jonathan = HourlyEmployee.new('Jonathan', 'nachoemail@example.com', 55, 50)
​
employees = [josh,nizar,ted,sebas,jonathan]
​
newpayroll = Payroll.new(employees)
​
​
newpayroll.pay_employees
​
#newpayroll.notify_employee(josh)
​
​
​
​
​
​