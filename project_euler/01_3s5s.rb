def find_multiple(start, num, end_num)
  return [] if num >= end_num
  [num] + find_multiple(start, num + start, end_num)
end

all_multiples = find_multiple(3, 3, 1000) + find_multiple(5, 5, 1000)

added = []
sum = 0
all_multiples.each do |num|
  unless added.include?(num)
    sum += num
    added << num
  end
end
p added
p sum
