card = gets.split
points = 0
money = card[0].to_i
# 一つ目が運賃、二つ目が乗車回数
(card[1].to_i).times do
  fee = gets.to_i
  point = (fee * 0.1).floor
  if points >= fee
    points = points - fee
    card[0].to_i += 0
  else
    money = money - fee
    points += point
  end
  puts money, points
end