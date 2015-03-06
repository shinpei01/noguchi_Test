class Employee
  require './benefit'
  include Benefit

  def initialize(employ_num, name, adress)
    @employ_num = employ_num
    @name = name
    @address = adress
  end

  def tori(calc_value, max_subsidy)
    if self.rent_subsidy_judge(@address)#補助対象か判定
      #最大補助額：max_subsidy
      #補助対象給与計算結果：calc_value
      #補助額：subsidy_amount
      if calc_value < max_subsidy
        subsidy_amount = calc_value
      else
        subsidy_amount = max_subsidy
      end
      puts "#{@name}さんは#{subsidy_amount}円の家賃補助がでます。"
    else
      puts "#{@name}さんは東京都港区ではありませんので家賃保補助対象外です！"
    end
  end

end
