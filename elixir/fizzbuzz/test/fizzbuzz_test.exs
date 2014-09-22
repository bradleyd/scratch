defmodule FizzbuzzTest do
  use ExUnit.Case

  test "returns fizz" do
    assert Fizzbuzz.run(3) == "Fizz"
  end

  test "returns Buzz" do
    assert Fizzbuzz.run(10) == "Buzz"
  end
end
