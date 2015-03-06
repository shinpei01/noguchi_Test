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
