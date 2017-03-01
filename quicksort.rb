class Array
  def quicksort
    return [] if empty?

    p orig: self
    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    p pv: pivot
    p lt: left
    p rt: right

    return *left.quicksort, pivot, *right.quicksort
  end
end


p [1,3,7,9,10].quicksort
