defmodule Fizzbuzz do

  def run(int) when rem(int,5) == 0 and rem(int,3) == 0 do
    "FizzBuzz"
  end

  def run(int) when rem(int, 3) == 0 do
    "Fizz"
  end

  def run(int) when rem(int,5) == 0 do
    "Buzz"
  end

  def run(int) do
    int
  end

end
