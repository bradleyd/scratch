defmodule Dup do
  def duplicate(0,_) do
    []
  end

  def duplicate(n, term) when n > 0  do
    [term|duplicate(n-1, term)]
  end

  def tail_duplicate(n, term) do
    tail_duplicate(n, term, [])
  end

  def tail_duplicate(0, _, list) do
    list
  end

  def tail_duplicate(n, term, list) when n > 0 do
    IO.inspect "n=#{n}, term=#{term}, list=#{to_char_list(list)}"
    tail_duplicate(n-1, term, [term|list])
  end
  
  
  
end
