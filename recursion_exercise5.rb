def permutations(array)
  return [array] if array.length <= 1

  first = array.shift

  perms = permutations(array)

  total_permutations = []

  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0 ... i] + [first] + perm[i .. -1]
    end
  end
  total_permutations
end
