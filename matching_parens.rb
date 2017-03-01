def matching_parens(str, pos)
  return 0 if str.nil?

  first_paren = str[pos]
  i = str.size - 1
  while i >= 0 do
    if str[i] == ')'
      return i
    end
    i -= 1
  end
end

string = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."

p matching_parens(string, 10)

string = "This is a (interview question)"

p matching_parens(string, 10)

def matching_parens(str, pos)
  return 0 if str.nil?
  match_paren = 0

  (pos + 1).upto(str.length - 1) do |pos|
    if str[pos] == '('
      match_paren += 1
    elsif str[pos] == ')'
      if match_paren == 0
        return pos # found matching paren
      else
        match_paren -= 1
      end
    end
  end
end

string = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."

p matching_parens(string, 10)

string = "This is a (interview question)"

p matching_parens(string, 10)


