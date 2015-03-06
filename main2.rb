class Nabeatsu
    def initialize(maxlength,stupid_number)
        @maxlength = maxlength
        @stupid_number = stupid_number
    end

    def stupid
        i = 1
        maxlength = @maxlength
        stupid_number = @stupid_number
       for i in 1..maxlength do
           i_str = i.to_s
           if i % stupid_number == 0 || i_str.include?(stupid_number.to_s)
               puts "stupit"
           else
           puts i
           i += 1
           end
       end
    end
end


a = Nabeatsu.new(50,4) #いくつまで数えるか, stupidになる数字をそれぞれ設定
a.stupid()

=end

#check = /[0-9]+/

#puts "東京都" !~ /埼玉/

=begin
class AdressChecker
    def initialize(input_adress)
        @input_adress = input_adress
    end

    def tokyouCheck
        puts @input_adress.match(/東京都/)
        if @input_adress.match(/東京都/).to_s == "東京都"
            puts "東京都の住所です”"
        else
            puts "東京都の住所ではありません"
        end
    end
end


a = AdressChecker.new("埼玉県上尾市１−１−１")
a.tokyouCheck()
=end
