def register_data(cars)
  car = {}
  puts "車種を入力してください"
  car[:type] = gets.chomp
  puts "１Lあたりの走行距離を入力してください"
  car[:fuel] = gets.to_f
  puts "乗車人数を入力してください"
  car[:capacity] = gets.to_i

  cars << car
end

def show_cars(cars)
  puts "確認したい番号を入力して下さい。"
  index = 1
  cars.each do |car|
    puts "#{index}：#{car[:type]}"
    index += 1
  end
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません"
  end
end

def show_data(car)
  puts "車種：#{car[:type]}"
  puts "1Lあたりの走行距離：#{car[:fuel]}km/l"
  puts "乗車人数：#{car[:capacity]}人"
  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  puts "これから乗る人数を入力して下さい。"
  input_capacity = gets.to_i

  calculate_fuel_consumption(car, input_distance)
  car_capacity(car, input_capacity)

end


def calculate_fuel_consumption(car, distance )
  time = input_distance / car[:fuel]
  puts "その目的地までは、ガゾリンを#{}L消費します。"
end

def car_capacity(car, capacity)
  capacity = car[:capacity] - input_capacity
  if capacity >= 0
    puts "あと#{capacity}人乗ることができます"
  else
    puts "#{capacity}人オーバーしています"
  end
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