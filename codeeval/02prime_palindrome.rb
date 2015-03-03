def largest_prime_palindrome(number)
  test_case = number
  answer_found = false
  until answer_found
    if prime?(test_case) && palindrome?(test_case)
      answer_found = true
    else
      test_case -= 1
    end
  end
  test_case
end

def prime?(number)
  half_number = number / 2
  (2..half_number).each do |divider|
    return false if number % divider == 0
  end
  true
end

def palindrome?(number)
  number_string = number.to_s
  (number_string.length / 2).times do |idx|
    return false unless number_string[idx] == number_string[0 - idx - 1]
  end
  true
end

puts largest_prime_palindrome(1000)
