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

end

def show_data(car)
  # 一覧から選択された車の全ての情報を表示する関数を完成させなさい

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  puts "これから乗る人数を入力して下さい。"
  input_capacity = gets.to_i

  # 目的地までの時間を計算する関数と乗車人数を計算する関数を呼び出して下さい
end


def calculate_fuel_consumption(car, distance )
  # 目的地までのガソリンの消費量を計算する関数を完成させなさい
  puts "その目的地までは、ガゾリンを#{}L消費します。"
end

def car_capacity(car, capacity)
  # 車に乗ることが出来る人数について、後何人乗ることが出来るのか、丁度乗ることが出来る人数なのか、もしくは何人定員オーバーなのかを出力する関数を完成させなさい
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
    # 車種を登録するための関数を呼び出しなさい。
  when "1"
    # 保存したデータを一覧で表示するための関数を呼び出しなさい。
  when "2"
    # アプリケーションを終了させなさい。
  else
    puts "無効な値です"
  end
end