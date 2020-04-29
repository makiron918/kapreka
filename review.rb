def post_review(a_posts)
  post = {}

  puts "ジャンルを入力してください："
  post[:genre] = gets.chomp
  puts "タイトルを入力してください："
  post[:title] = gets.chomp
  puts "感想を入力してください："
  post[:review] = gets.chomp
  line = "---------------------------"

  puts "ジャンル：#{post[:genre]}\n#{line}"
  puts "タイトル：#{post[:title]}\n#{line}"
  puts "感想：\n#{post[:review]}\n#{line}"

  a_posts << post

  return a_posts
end

def read_reviews(a_posts)
  num = 0
  a_posts.each do |post|
    puts "[#{num}]:#{post[:title]}のレビュー"
    num += 1
  end
end

def end_program
  exit
end

def exception
  puts "無効な値です"
end

posts = []

while true do
  puts "レビュー数：#{posts.length}"
  puts "[0]レビューを書く"
  puts "[1]レビューを読む"
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 
    posts = post_review(posts)
  elsif input == 1
    read_reviews(posts)
  elsif input == 2
    end_program
  else
    exception
  end
end


