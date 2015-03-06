require './employee.rb'
class FulltimeEmploy < Employee
  require './benefit'
  include Benefit

  def initialize(employ_num, name, adress, salary)
    @employ_num = employ_num
    @name = name
    @address = adress
    @salary = salary
  end

  def rent_subsidy_calculator_fulltime
    max_subsidy = 45000
    subsidy_rate = 0.2
    calc_value = @salary * subsidy_rate
    self.tori(calc_value, max_subsidy)
  end
end

a = FulltimeEmploy.new(100, "野口", "東京都中野区新井", 210000)
a.rent_subsidy_calculator_fulltime
