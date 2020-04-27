puts "ジャンルを入力してください："
genre = gets.chomp
puts "タイトルを入力してください："
title = gets.chomp
puts "感想を入力してください："
review = gets.chomp
line = "---------------------------"

puts "ジャンル：#{genre}\n#{line}"
puts "タイトル：#{title}\n#{line}"
puts "感想：\n#{review}\n#{line}"
