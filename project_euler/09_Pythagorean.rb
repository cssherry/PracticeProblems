def pythagorean_sum(sum)
  c = 5
  while c < sum
    possible_triple = pythagorean_triplet(c)
    unless possible_triple.nil?
      possible_triple.each do |triplet|
        return triplet if triplet.inject(0){|sum_sides, side| sum_sides + side } == sum
      end
    end
    c += 1
  end
end

def pythagorean_triplet(c)
  a = c - 1
  answer = []
  while a > 1
    b = Math.sqrt(c**2 - a**2)
    if b == b.to_i
      answer << [a, b.to_i, c]
    end
    a -= 1
  end
  answer
end

p triplet = pythagorean_sum(1000)
p triplet.inject(1) {|product, side| product * side}
