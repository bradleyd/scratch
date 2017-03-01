def merge_sort(m)
  p original: m
  return m if m.length <= 1
 
  middle = m.length / 2
  left = m[0,middle]
  right = m[middle..-1]
 
  p lt_sub: left
  p rt_sub: right
  left = merge_sort(left)
  right = merge_sort(right)
  p lt: left
  p rt: right
  merge(left, right)
end
 
def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end


p merge_sort([21,4,1,3,9,20,25])
