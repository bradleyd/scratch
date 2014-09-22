defmodule RecursionTest do
  use ExUnit.Case

  test "zip combines lists" do
    a = Recursion.zip([1,2], ["a", "b"])
    assert [{1,"a"}, {2,"b"}] == a 
  end
  
  
end

