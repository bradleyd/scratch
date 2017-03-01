
def factoral number
  count = 1
  product = 1
  while count < number.to_i do
    count = count + 1
    product = product * count
  end
  product
end

p factoral ARGV[0]
