def compress(str)
  compressed = []
  last = str[0]
  count = 0
  str.each_char do |c|
    if c == last
      count += 1
    else
      compressed << "#{last}#{count}"
      last = c
      count = 1
    end
  end

  compressed << "#{last}#{count}"
  compressed.join
end

def compression_size(str)
  return 0 if str.nil?
  last = str[0]
  size = 0
  count = 1
  str.each_char do |c|
    if c == last
      count += 1
    else
      last = c
      size += (1 + count.to_s.length)
      count = 1
    end
  end
  size += (1 + count.to_s.length)
end

p compress("aabbc")
p compression_size("aabbc")
