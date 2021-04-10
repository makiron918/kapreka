mail = gets.chomp

if mail =~ /\A[a-z0-9_\-\.]+@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  puts "適切なメールアドレスです"
else
  puts "不適切なメールアドレスです"
end