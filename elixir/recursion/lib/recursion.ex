defmodule Recursion do
  def zip([],[]) do
    []
  end

  def zip([x|xs], [y|ys]) do
   [{x,y}|zip(xs,ys)] 
  end
end

