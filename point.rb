info = gets.to_i
points = []
info.times do
  datePrice = gets.split(' ')
  if datePrice[0].match(/01\z/)
    point = (datePrice[1].to_f * 0.05).truncate
  elsif datePrice[0].match(/3\z/)
    point = (datePrice[1].to_f * 0.02).truncate
  elsif datePrice[0].match(/5\z/)
    point = (datePrice[1].to_f * 0.03).truncate
  else
    point = (datePrice[1].to_f * 0.01).truncate
  end
  points.push(point)
end
puts "#{points.sum}ポイント"