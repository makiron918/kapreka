	
def register_book
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する

  book = []

  puts '著者を入力してください'
  book[:author] = gets.chomp
  puts 'タイトルを入力してください'
  book[:title] = gets.chomp
  puts '価格を入力してください'
  book[:price] = gets.to_i
  
end

def show_books(books)
  puts "見たい番号を入力してください"
  # 保存された本の一覧を出力する
end

def show_detail
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
end

def average_price
  # 全ての本の平均価格を算出する
end

while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    register_book
  when 1
    # 保存された本の一覧を出力する
  when 2
    exit
  else
    puts '無効な値です'
  end
end