def range(start_value, end_value)
  return [] if end_value < start_value
  return start_value  if start_value == end_value
  start_value + range(start_value + 1, end_value)
end
