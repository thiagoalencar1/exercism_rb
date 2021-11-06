
=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end


class ResistorColorDuo
  def self.value(colors)
  num_colors = { "black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, "green" => 5, "blue" => 6, "violet" => 7, "grey" => 8, "white" => 9 }  
  (num_colors[colors[0]].to_s + num_colors[colors[1]].to_s).to_i
  end
end
