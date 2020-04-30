def register_data(cars)
  car = {}
  puts "車種を入力してください"
  car[:type] = gets.chomp
  puts "１Lあたりの走行距離を入力してください"
  car[:distance] = gets.to_f
  puts "乗車人数を入力してください"
  car[:person] = gets.to_i
  # 1Lあたりの走行距離については、少数を扱うことが出来るようにto_fを扱い、乗車人数に関しては、to_iを使用すること
  cars << car
end

def show_cars(cars)
  # 保存した車種の一覧を表示するための関数を完成させなさい
  # 確認したい番号を入力した後に、show_dataの関数を呼び出すようにしなさい
  puts "確認したい番号を入力して下さい。"
  index = 1
  cars.each do |car|
    puts "#{index}：#{car[:type]}"
    index += 1
  end
  input = gets.to_i
  show_data(cars[input - 1])
end

def show_data(car)
  # 一覧から選択された車の全ての情報を表示する関数を完成させなさい
  puts "車種：#{car[:type]}"
  puts "1Lあたりの走行距離：#{car[:distance]}"
  puts "乗車人数：#{car[:person]}"
  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  puts "これから乗る人数を入力して下さい。"
  input_capacity = gets.to_i

  # 目的地までの時間を計算する関数と乗車人数を計算する関数を呼び出して下さい
  time = input_distance / car[:distance]
  capacity = car[:person] - input_capacity
  if capacity >= 0
    puts "あと#{capacity}人乗ることができます"
  else
    puts "#{capacity}人オーバーしています"
  end
end


def calculate_fuel_consumption(car, distance )
  puts "その目的地までは、ガゾリンを#{}L消費します。"
end

def car_capacity(car, capacity)
  
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"

  input = gets.chomp
  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end