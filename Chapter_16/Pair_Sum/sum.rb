# given an array, find all the pairs that add to a specific value

def pair_sum(array, target)

  sum_hash = {}
  pair_sum = []

  array.each do |value|
    sum_hash[value] = target - value
  end

  sum_hash.each do |k,v|
    if sum_hash[v]
      pair_sum << [k,v]
    end
  end
  pair_sum
end

array = [8,3,2,9,1,7,11,15,4,20,100,6]
target = 10

print pair_sum(array, target)
