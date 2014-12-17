#Takes too long
# def factors(num)
#   factors = []
#   (2...num).each do |divider|
#     factors << divider if num % divider == 0
#   end
#   factors
# end
#
def short_factors(num)
  factors = []
  (2...num/2).each do |divider|
    factors << divider if num % divider == 0
  end
  factors
end
#
# def prime_factors(num)
#   factors = factors(num)
#   factors.select do |factor|
#     short_factors(factor).length < 1
#   end
# end

def prime_factors_short(num)
  i = num
  while i>0
    if num % i == 0
      return i if short_factors(i).length < 1
    end
    p i if i % 10000 == 0
    i-=1
  end
end

p prime_factors_short(600851475143) #THIS TAKES SO LONG TO RUN!
