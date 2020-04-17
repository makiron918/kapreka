def kapreka(n)
  def kapreka_re(n, result)
    max = n.to_s.split(//).sort.reverse.to_s.to_i
    min = n.to_s.split(//).sort.to_s.to_i
    kap = max - min
    if result.member?(kap)
      return result.push(kap)
    else
      return kapreka(kap, result.push(kap))
    end
  end

  kapreka_re(n, [])
end

puts "3桁以上の整数を入力してください"
n = gets.chomp
kapreka(n)

