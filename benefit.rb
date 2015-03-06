module Benefit
  def rent_subsidy_judge (user_adress)
    if user_adress.include?("東京都港区")
      true
    else
      false
    end
  end
end
