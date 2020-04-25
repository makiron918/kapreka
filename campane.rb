# n と k を取得
input_str = input().split()  # スペース区切りで取得
n = int(input_str[0])
k = int(input_str[1])

# a_1, a_2 ... a_n を取得
input_list = input().split()
a_list = []
for a_i in input_list:
    a_list.append(int(a_i))

# キャンペーンの各区間の平均値
average = []

for i in range(n - k + 1):
    i_average = 0
    for j in range(k):  # k日間分足して平均を求める
        i_average += a_list[i + j]

    average.append(i_average / k)


ans_max = 0
for i in average:  # 最大値をループで探す
    if ans_max < i:
        ans_max = i


ans_first_max = 0
for i in average:  # 最初に出てくる日を探す
    if i == ans_max:
        break
    ans_first_max += 1

ans_count = 0
for i in average:  # 最大値と同じ値の個数を求める
    if ans_max == i:
        ans_count += 1

print(str(ans_count) + " " + str(ans_first_max + 1))