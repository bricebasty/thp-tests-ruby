def who_is_bigger(a,b,c)
  # [a, b, c].any?(&:nil?) ? "nil detected" : "#{[:a, :b, :c].max_by { |var| eval(var.to_s) }} is bigger"
  if [a,b,c].any?(&:nil?)
    return "nil detected"
  elsif a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  return string.reverse.upcase.gsub(/[LAT]/, '')
end

def array_42(array)
  return array.include?(42)
end

def magic_array(a)
  a.flatten.map{_1*2}.reject{_1%3<1}.uniq.sort
end