=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops

  def self.convert(number)
    check = {3=>"Pling", 5=>"Plang", 7=>"Plong"}
    sound="" 

    if (number % 3 == 0) || (number % 5 == 0) || (number % 7 == 0)
      check.each do |key, value|
        if number % key == 0
          sound << value
        end
      end
    else
      sound = number
    end
    sound.to_s
  end
end