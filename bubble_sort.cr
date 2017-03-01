
a = [21,4,1,3,9,20,25,6,21,14]

def bubble_sort(list)
    swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        p list
        swapped = true
      end
    end
  end
  list
end

bubble_sort(a)

