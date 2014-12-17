def prime(num)
  answer = []
  possible_prime = 2
  while answer.length < num
    if prime?(possible_prime)
      answer << possible_prime
    end
    possible_prime += 1
  end
  answer.last
end

def prime?(num)
  answer = true
  (2...num).each do |divider|
    return answer = false if num % divider == 0
  end
  answer
end

p prime(10001) # This takes a while, but it will run!
