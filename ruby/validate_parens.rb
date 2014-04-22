#!/usr/bin/env ruby
# encoding: utf-8
 

def validate_parens str
  count = 0
  str.each_char do |c|
    if c == "("
      count += 1
    elsif c == ")"
      return false if count <= 0
      count -= 1
    end
  end
  count == 0 ? true : false
end

bad = "(fdfadfsffs)(fsdfdf))"
good = "(fgdgddgdgdf(76767)hfhgfhf)"

p bd: validate_parens(bad)
p good: validate_parens(good)
