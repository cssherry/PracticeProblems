# Too Recursive, doesn't work
# def fibonacci_rec(end_number)
#   return [1, 2] if end_number == 2
#   return [1] if end_number == 1
#   fibonacci(end_number - 1) + [fibonacci(end_number - 1)[-1] + fibonacci(end_number - 1)[-2]]
# end

def fibonacci(end_number)
  results = [1,2]
  while results.last < end_number
    results += [results[-1] + results[-2]]
  end
  results
end

p a = fibonacci(4_000_000)
even = a[0..-2].select(&:even?)
p even.inject(0){|sum, num| sum + num}
