def roman_to_integer roman
  len = roman.length
  x = 1
  while x <= len
    arr = Array.new
    arr.push roman[x]
    x += 1
  end
  num = 0
  arr.each do |i|
    if i == 'I'
      num +=  1
    elsif i == 'V'
      num +=  5
    elsif i == 'X'
      num +=  10
    elsif i == 'L'
      num +=  50
    elsif i == 'C'
      num +=  100
    elsif i == 'D'
      num += 500
    elsif i == 'M'
      num +=  1000
    end
  end

  num
end    
