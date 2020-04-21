def kapreka(n)
  def kapreka_re(n, result)
    max = n.to_s.split(//).sort.reverse.to_s.to_i
    min = n.to_s.split(//).sort.to_s.to_i
    kap = max - min
    if result.member?(kap)
      return result.push(kap)
    else
      return kapreka_re(kap, result.push(kap))
    end
  end

  kapreka_re(num, [])
end

def is_kaprekar_number(num)
  characters = num.to_s.split('').sort
  min = characters.join.to_i
  max = characters.reverse.join.to_i
  return (max - min) == num
end
def next_kaprekar_number(start)
  # カプレカ数は9の倍数しかないので、9の倍数から始める
  num = ((start + 8) / 9) * 9
  loop do
    return num if is_kaprekar_number(num)
    num = num + 9
  end
end

input = STDIN.gets.chomp
puts next_kaprekar_number(input.to_i)

