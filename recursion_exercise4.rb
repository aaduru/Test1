#recursion
def fibonacci(n, array = nil)
  return array if array != nil && array.length == n
  return [1] if n == 1
  if array.nil?
    fibonacci(n, [1,1])
  else
    next_array = array
    next_array = next_array << array[-2..-1].inject(&:+)
    fibonacci(n, next_array)
  end
end

fibonacci(10)

#iteration
def fibonacci_it(n)
  new_array = [1]
  (n - 1).times do |el|
    if new_array[-2].nil?
      new_array << new_array[-1]
    else
      new_array << new_array[-1] + new_array[-2]
    end
  end
  new_array
end
