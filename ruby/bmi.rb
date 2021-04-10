hw = gets.split(' ')
hm = (hw[0].to_f / 100.to_f).to_f
bmi = hw[1].to_f / (hm**2)
if bmi < 18.5
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：低体重"
elsif 18.5 <= bmi && bmi < 25
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：普通体重"
elsif 25 <= bmi && bmi <30
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：肥満（１度）"
elsif 30 <= bmi && bmi < 35
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：肥満（２度）"
elsif 35 <= bmi && bmi < 40
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：肥満（３度）"
else
  puts "BMI：#{bmi.truncate(1)}"
  puts "判定：肥満（４度）"
end