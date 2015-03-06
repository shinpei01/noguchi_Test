

=begin
class Nabeatsu
    def initialize(maxlength,stupid_key_num)
        @maxlength = maxlength
        @stupid_key_num = stupid_key_num
    end

    def nabeatsu_counting
        i = 1
        maxlength = @maxlength
        stupid_key_num = @stupid_key_num
        for i in 1..maxlength do
            if i % stupid_key_num == 0 || i.to_s.include?(stupid_key_num.to_s)
                puts "stupit"
            else
                puts i
            end
        end
    end
end

nabeatsu = Nabeatsu.new(50,3) #いくつまで数えるか, stupidになる数字をそれぞれ設定
nabeatsu.nabeatsu_counting()
=end

class Nabeatsu
  def rent_subsidy_calculator(user_month_rent)
    max_subsidy = 20000
    subsidy_rate = 0.2
    calc_value = user_month_rent * subsidy_rate

    if calc_value < max_subsidy
      subsidy_amount = calc_value
    else
      subsidy_amount = max_subsidy
    end

    return subsidy_amount
  end
end
nabeatsu = Nabeatsu.new #いくつまで数えるか, stupidになる数字をそれぞれ設定
puts nabeatsu.rent_subsidy_calculator(85000)
