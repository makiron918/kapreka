def register game(games)
  game = {}
  puts "ゲームのジャンルを入力してください："
  game[:genre] = gets.chomp
  puts "ゲームのハード名を入力してください："
  game[:platform] = gets.chomp
  puts "ゲームのタイトルを入力してください："
  game[:title] = gets.chomp

  games << game
end

def show games(games)
  index = 1
  games.each do |game|
    puts "#{index}:#{game[:title]}"
    index += 1
  end
  puts "見たいゲームの番号を入力してください"
  input = gets.to_i - 1
  game = games[input]
  puts "ゲームのジャンル：#{game[:genre]}"
  puts "ゲームのハード：#{game[:platform]}"
  puts "ゲームのタイトル：#{game[:title]}"
end

games = []