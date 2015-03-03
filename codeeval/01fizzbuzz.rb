require 'byebug'

# Class that holds logic for creating FizzBuzz
class FizzBuzz
  def initialize(file_name)
    @lines = File.readlines(file_name)
    @answer = generate_lines
  end

  # Custom attr_reader
  def answer
    @answer.join("\n")
  end

  # Creates answers for each line
  def generate_lines
    results = []
    @lines.each do |line|
      fizzbuzz_array = fizzbuzz(line)
      results.push(fizzbuzz_array.join(' '))
    end
    results
  end

  # Logic for creating fizzbuzz string
  def fizzbuzz(line)
    parameters = line.split
    first_divider = parameters[0].to_i
    second_divider = parameters[1].to_i
    max_number = parameters[2].to_i
    (1..max_number).inject([]) do |sum, number|
      answer = ''
      answer += "F" if number % first_divider == 0
      answer += "B" if number % second_divider == 0
      answer.empty? ? sum.push(number) : sum.push(answer)
    end
  end
end

example = FizzBuzz.new(ARGV[0])
puts example.answer
