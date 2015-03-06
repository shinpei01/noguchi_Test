class Nabeatsu
  def initialize(maxlength,divider)
      @maxlength = maxlength
      @divider = divider
  end

  def nabeatsu_countup
    i = 1
    maxlength = @maxlength
    divider = @divider
    for i in 1..maxlength do
      if i % divider == 0 || i.to_s.include?(divider.to_s)
        puts "stupit"
      else
        puts i
      end
    end
  end
end

nabeatsu = Nabeatsu.new(50,3) #いくつまで数えるか, stupidになる数字をそれぞれ設定
nabeatsu.nabeatsu_countup
