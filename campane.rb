input_str = input().split()
n = int(input_str[0])
k = int(input_str[1])

input_list = input().split()
a_list = []
for a_i in input_list:
    a_list.append(int(a_i))
    
for i in range(n - k + 1):
    print(a_list[i])
    
average = []

for i in range(n - k +1):
    i_average = 0
    for j in range(k):
        i_average += a_list[i + j]
    
    average.append(i_average / k)
    
ans_max = 0
for i in average:
    if ans_max < i:
        ans_max = i

ans_first_max = 0
for i in average:
    if i == ans_max:
        break
    ans_first_max += 1
    
ans_count = 0
for i in average:
    if ans_max == i:
        ans_count += 1
        
print(str(ans_count) + " " + str(ans_first_max + 1))