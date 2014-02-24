#!/usr/bin/env ruby
# encoding: utf-8

def next_p int
  found  = false
  start_integer = int.next.to_i 
  start_integer.upto(10_000) { |n|
    break if found
    if n.to_s == n.to_s.reverse
      puts n
      found = true
    end
  }
end

next_p ARGV[0]
