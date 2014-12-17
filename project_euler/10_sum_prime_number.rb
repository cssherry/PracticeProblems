def prime(end_number)
  current_sum = 0
  possible_prime = 2
  while possible_prime < end_number
    if prime?(possible_prime)
      p possible_prime
      current_sum += possible_prime
    end
    possible_prime += 1
  end
  current_sum
end

def prime?(num)
  answer = true
  (2...num).each do |divider|
    return answer = false if num % divider == 0
  end
  answer
end

p prime(2_000_000) # This hours to run completely, but it will run!
