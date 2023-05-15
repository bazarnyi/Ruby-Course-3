# frozen_string_literal: true

def add(a, b)
  if a.instance_of?(String)
    puts a + b.to_s
  elsif b.instance_of?(String)
    puts a.to_s + b
  else
    puts a + b
  end
end

add 1, 20
