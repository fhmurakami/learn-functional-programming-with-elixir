# Write two recursive functions: one that finds the biggest element
# of a list and another that finds the smallest. You should use them
# like this:
# MyList.max([4, 2, 16, 9, 10]) # => 16
# MyList.min([4, 2, 16, 9, 10]) # => 2

defmodule MyList do
  def max([]), do: nil
  def max([n]), do: n
  def max([head | tail]) do
    if head >= max(tail) do
      head
    else
      max(tail)
    end
  end

  def min([n]), do: n
  def min([head | tail]) do
    if head <= min(tail) do
      head
    else
      min(tail)
    end
  end
end
