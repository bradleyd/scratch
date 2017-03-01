def quicksort(arr, low, high)
  if low >= high
    return arr
  end

  middle = low + (high - low) / 2
  pivot  = arr[middle]

  i = low
  j = high

  while i <= j

    while arr[i] < pivot
      i += 1
    end

    while(arr[j] > pivot)
      j -= 1
    end

    if i <= j
      temp   = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      i += 1
      j -= 1
    end

    if low < j
      quicksort(arr, low, j)
    end

    if high > i
      quicksort(arr, i, high)
    end
  end
  arr
end

array = [9, 2, 4, 7, 3, 7, 10]
p quicksort(array, 0, array.size - 1)



