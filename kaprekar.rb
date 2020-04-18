
def input_num
  input = gets.to_s
  min = input.to_s.split("").sort.join.to_i
  max = input.to_s.split("").sort.reverse.join.to_i
  diff = max - min
  result = "%0#{input.length-1}d" % diff

  while result != input do
    input = "%0#{input.length-1}d" % diff
    min = input.to_s.split("").sort.join.to_i
    max = input.to_s.split("").sort.reverse.join.to_i
    diff = max - min
    result = "%0#{input.length-1}d" % diff
  end
  puts result
end

input_num

