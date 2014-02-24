#!/usr/bin/env ruby
# encoding: utf-8

def binary_search(array, value, min, max)
  sorted_array = array.sort
  if min > max
    return "not found"
  end

  mid = ((min + max) / 2)
  if sorted_array[mid] > value
    return binary_search(array, value, min, (mid - 1))
  elsif sorted_array[mid] < value
    return binary_search(array, value, (mid + 1), max)
  else
    puts "Found #{value} at index #{sorted_array.index(sorted_array[mid])}"
  end
end

sample = [1, 2, 3, 4, 5, 6]

binary_search(sample, 2, 0, sample.length)
