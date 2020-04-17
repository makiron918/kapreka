def kapreka(n)
  def kapreka_re(n, result)
    max = n.to_s.split(//).sort.reverse.to_s.to_i
    min = n.to_s.split(//).sort.to_s.to_i
    kap = max - min
    if result.member?(kap)
      return result.push(kap)
    else
      return kapreka_re(kap, result.push(kap))
    end
  end

  kapreka_re(num, [])
end

kapreka(156)

