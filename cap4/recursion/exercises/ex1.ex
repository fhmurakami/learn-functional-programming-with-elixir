# Write two recursive functions: one that finds the biggest element
# of a list and another that finds the smallest. You should use them
# like this:
# MyList.max([4, 2, 16, 9, 10]) # => 16
# MyList.min([4, 2, 16, 9, 10]) # => 2

defmodule MyList do
  def max([]), do: nil
  def max([n]), do: n
  def max([a, b | tail]) when a >= b, do: find_max(tail, a)
  def max([a, b | tail]) when a < b, do: find_max(tail, b)

  defp find_max([], max), do: max
  defp find_max([head | tail], max) when head >= max, do: find_max(tail, head)
  defp find_max([head | tail], max) when head < max, do: find_max(tail, max)

  def min([]), do: nil
  def min([n]), do: n
  def min([a, b | tail]) when a <= b, do: find_min(tail, a)
  def min([a, b | tail]) when a > b, do: find_min(tail, b)

  defp find_min([], min), do: min
  defp find_min([head | tail], min) when head <= min, do: find_min(tail, head)
  defp find_min([head | tail], min) when head > min, do: find_min(tail, min)
end
