def tri
  i = 1
  n = 3
  sp = " "
  while i < 5 do
    puts sp * n + "a" * i
    i += 1
    n -= 1
  end
end

tri