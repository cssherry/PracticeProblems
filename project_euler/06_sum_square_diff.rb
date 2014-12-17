def sum_square_difference(num)
  sum_of_squares = 0
  sum = 0
  (1..num).each do |number|
    sum_of_squares += number * number
    sum += number
  end

  (sum * sum) - sum_of_squares
end

p sum_square_difference(100) # This takes a while, but it will run!
