def smallest_multiple(num)
  i = num * 2
  while true
    return i if (1..num).all? {|d| i % d == 0 }
    i += 1
  end
end

p smallest_multiple(20) # This takes a while, but it will run!
