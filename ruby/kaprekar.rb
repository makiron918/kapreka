
def input_num
  puts "0以上かつ100,000,000,000,000以下の整数を入力して下さい"
  input = gets.to_s
  if input.to_i > 100000000000000 || input.to_i < 0
    puts "入力値を0以上100,000,000,000,000以下にしてください"
  else
    min = input.to_s.split("").sort.join.to_i
    max = input.to_s.split("").sort.reverse.join.to_i
    diff = max - min
    result = "%0#{input.length-1}d" % diff

    for i in 1..100 do
      input = "%0#{input.length-1}d" % diff
      min = input.to_s.split("").sort.join.to_i
      max = input.to_s.split("").sort.reverse.join.to_i
      diff = max - min
      result = "%0#{input.length-1}d" % diff
    end
    if result != input
      puts "カプレカ数は見つかりませんでした"
    else
      puts result
    end
  end
end

input_num

