#!/usr/bin/env ruby
# encoding: utf-8

array = %w{ foo bars thisislong baz }

def sort_string_length arr
  for i in (0..arr.length - 2) do
    for j in ((i + 1)..arr.length - 1) do
      if arr[i].size > arr[j].size
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
    end
  end
  arr
end

p sort_string_length array

