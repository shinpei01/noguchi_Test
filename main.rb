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

































