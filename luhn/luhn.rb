=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(in_luhn)   
    luhn_number = in_luhn.delete(" ").reverse
    if luhn_number.length <= 1
      false
    elsif luhn_number.chars.grep(/[[^0-9]]/).length >= 1
      false
    else
      position = 1
      while position < luhn_number.length
        thing = luhn_number[position].to_i
        thing *= 2
        if thing > 9
          thing -= 9
        end
        luhn_number[position] = thing.to_s
        position += 2
      end
      sum = 0
      luhn_number.each_char do |c|
        sum += c.to_i
      end         
      sum % 10 == 0 ? true : false 
    end
  end
end
