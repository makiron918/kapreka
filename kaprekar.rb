# ・0以上かつ100,000,000,000,000以下のｎを入力させるプログラムを作る
# ・ｎ以上かつｎに一番近いカプレカ数を求めるプログラムを作る
# ・求めたカプレカ数を出力させるプログラム（puts）を書く

def input_num
  input = gets.to_i
  if input < 0 || input > 100000000000000
    puts "無効な値です。"
  end
end

def cul_num
end

