def kapreka(n, result)
  max = n.to_s.split(//).sort.reverse.to_s.to_i
  min = n.to_s.split(//).sort.to_s.to_i
  kap = max - min
  if result.member?(kap)
    return results.push(kap)
  else
    return kaprekar2(kap, result.push(kap))
  end
end

