require 'byebug'
class UglyNumbers
  def initialize(filename)
    @file = File.readlines(filename).map(&:strip)
  end

  def calculate_ugly_numbers
    @file.inject([]) do |sum, value|
      subsets_for_value = subsums(value)
      number = number_of_ugly_numbers(subsets_for_value)
      sum.push(number)
    end
  end

  def number_of_ugly_numbers(array_of_numbers)
    array_of_numbers.inject(0) do |sum, number|
      ugly_number?(number.to_i) ? sum + 1 : sum
    end
  end

  def subsums(number)
    number_array = number.split('')
    find_subsums(number_array)
  end

  def find_subsums(number_array)
    results = [number_array.shift.to_i]
    number_array.each do |new_number|
      new_results = []
      results.each do |old_number|
        add = old_number + new_number.to_i
        subtract = old_number - new_number.to_i
        concat = (old_number.to_s + new_number).to_i
        new_results.push(add)
        new_results.push(subtract)
        new_results.push(concat)
      end
      results = new_results
    end
    results
  end

  def ugly_number?(number)
    if number % 2 == 0 || number % 3 == 0 || number % 5 == 0 || number % 7 == 0
      true
    else
      false
    end
  end
end

ugly_number = UglyNumbers.new(ARGV[0])
puts ugly_number.calculate_ugly_numbers
