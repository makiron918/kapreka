# ・0以上かつ100,000,000,000,000以下のｎを入力させるプログラムを作る
# ・ｎ以上かつｎに一番近いカプレカ数を求めるプログラムを作る
# ・求めたカプレカ数を出力させるプログラム（puts）を書く

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

# min = 152.to_s.split("").sort.join.to_i
# max = 152.to_s.split("").sort.reverse.join.to_i
# puts max - min
input_num

