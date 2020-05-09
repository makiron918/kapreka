def register game
  game = {}
  puts "ゲームのジャンルを入力してください："
  game[:genre] = gets.chomp
  puts "ゲームのハード名を入力してください："
  game[:platform] = gets.chomp
  puts "ゲームのタイトルを入力してください："
  game[:title] = gets.chomp

  games << game
end