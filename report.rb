students = []
ranks = []
exam = gets.split
(exam[0].to_i).times do
    student = gets.split
    score = 100 / exam[1].to_i * student[1].to_i
    if student[0].to_i > 0 && student[0].to_i <= 9
        score = score * 0.8
    elsif student[0].to_i > 9
        score = 0
    end
    students.push(student)
    if score.floor >= 80
        ranks.push("A")
    elsif score.floor >= 70 && score.floor < 80
        ranks.push("B")
    elsif score.floor >= 60 && score.floor < 70
        ranks.push("C")
    else
        ranks.push("D")
    end
end
ranks.each do |rank|
  puts "評価は#{rank}です"
end