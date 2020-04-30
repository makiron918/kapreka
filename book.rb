	
def register_book(books)
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する

  book = {}

  puts '著者を入力してください'
  book[:author] = gets.chomp
  puts 'タイトルを入力してください'
  book[:title] = gets.chomp
  puts '価格を入力してください'
  book[:price] = gets.to_i

end

def show_books(books)
  puts "見たい番号を入力してください"
  num = gets.to_i
end

def show_detail
  puts "タイトル：#{title}"
  puts "著者：#{author}"
  puts "価格：#{price}"
end

def average_price
  average = books[:price] / books.length
end

books = []

while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end