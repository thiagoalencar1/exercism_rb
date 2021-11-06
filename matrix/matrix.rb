=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(source)
    @rows = source.split("\n").map{|row| row.split(' ').map(&:to_i)}
    @columns = rows.transpose
  end
  
  attr_reader :rows, :columns

end