require './employee.rb'
class Parttime < Employee
  require './benefit'
  include Benefit

  def initialize(employ_num, name, adress, hourly_pay, number_of_attendances)
    @employ_num = employ_num
    @name = name
    @address = adress
    @hourly_pay = hourly_pay
    @number_of_attendances = number_of_attendances
  end

  def rent_subsidy_calculator
    max_subsidy = 20000
    subsidy_rate = 0.2
    calc_value = @hourly_pay * @number_of_attendances * subsidy_rate

    self.tori(calc_value, max_subsidy)
  end
end

a = Parttime.new(100, "野口", "東京都中野区新井",10000, 5)
a.rent_subsidy_calculator
