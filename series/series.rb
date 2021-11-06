=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(serie)
    @serie = serie
  end

  def slices(slices_num)
    raise ArgumentError.new(
      'Slices length bigger than series.') if slices_num > @serie.length 
    @serie.chars.each_cons(slices_num).map(&:join)
  end
end