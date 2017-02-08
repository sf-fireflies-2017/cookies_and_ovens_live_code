def total
  sum = 0
  [1, 2, 3].each do |num|
    sum += num
  end
  sum
end

def reverse
  new_array = []
  [1, 2, 3].each do |num|
    new_array = [num] + new_array
  end
end

def reduce(array)
  array.each do |item|

  end
end