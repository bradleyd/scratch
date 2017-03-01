require "./sort"

class StringInterview
  include Sort

  def reverse(str : String) : String
    chars = str.chars
    start = 0
    last  = chars.size - 1
    while(last > start)
      temp = chars[start];
      chars[start] = chars[last];
      chars[last]  = temp;
      last  -= 1
      start += 1
    end
    chars.join
  end

  def permutation?(first : String, second : String) : Bool
    if first.size != second.size
      return false
    end

    sorted_first = quicksort(first.chars, 0, first.chars.size - 1)
    sorted_second = quicksort(second.chars, 0, second.chars.size - 1)
    if sorted_first.join == sorted_second.join
      return true
    end
    false
  end

  def replace_spaces_with_percent_20(str : String)
    space_count = 0
    str.each_char do |c|
      if c == ' '
        space_count += 1
      end
    end

    new_string_size = str.chars.size + space_count * 2
    sb = Array(Char).new(new_string_size)
    str.each_char do |c|
      if c == ' '
        sb << '%'
        sb << '2'
        sb << '0'
      else
        sb << c
      end
    end
    sb.join
  end
end

si = StringInterview.new

p si.reverse("Brad")

#good
p si.permutation?("god", "dog")
#bad
p si.permutation?("foo", "bar")
#replace string with %20
p si.replace_spaces_with_percent_20("The brown fox")
