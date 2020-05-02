def register_data(data)
hero = {}
  # 名前、パンチ力、キック力、ジャンプ力をユーザーに入力させ、保存する。
  puts "名前を入力してください"
  hero[:name] = gets.chomp
  puts "パンチ力を入力してください(0 ~ 100)"
  hero[:punch] = gets.to_i
  puts "キック力を入力してください(0 ~ 100)"
  hero[:kick] = gets.to_i
  puts "ジャンプ力を入力してください(0 ~ 100)"
  hero[:jump] = gets.to_i

  data << hero

end


def power(punch, kick, jump)

  # 入力された数字が0~100になるまで繰り返し入力させる。
  while hero[:punch] <= 100 && hero[:kick] <= 100 && hero[:jump] <= 100 do 
    puts "100以下の数字を入力してください"
  end

end


def hero_rank(punch, kick, jump)

  rank = hero[:punch] + hero[:kick] + hero[:jump]
  if rank == 300
    hero[:rank] = A
  elsif 100 <= rank && rank < 300
    hero[:rank] = B
  elsif 20 <= rank && rank < 100
    hero[:rank] = C
  else
    hero[:rank] = D
  end

end


def show_data_list(data)
  index = 1
  # 保存されたデータの一覧を出力する。
  data.each do |hero|
    puts "#{index}:#{hero[:name]}"
    index += 1
  end
  puts "見たい番号を入力してください"
  input = gets.to_i
  if input = index
    puts "名前：#{hero[:name]}"
    puts "パンチ力：#{hero[:punch]}"
    puts "キック力：#{hero[:kick]}"
    puts "ジャンプ力：#{hero[jump]}"
    puts "ヒーローランク：#{hero[:rank]}"
  end

  # 選択されたデータの詳細な情報（名前、パンチ力、キック力、ジャンプ力、ヒーロランク）を出力する。

end

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end