=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError, 'Genomas with differents length.' unless dna1.length == dna2.length

    dna1.chars.zip(dna2.chars).each.count { |n1, n2| n1 != n2 }
  end
end