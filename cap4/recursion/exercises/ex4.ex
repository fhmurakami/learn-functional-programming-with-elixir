# We've written a lot of recursive functions, but not all of them
# are tail recursive. Write the tail-recursive version of
# Sum.up_to/1 and Math.sum/1.
# Extra challenge: write the tail-recursive version of Sort.merge/2

defmodule Sum do
  def up_to(n), do: sum(n, 0)

  defp sum(0, acc), do: acc
  defp sum(n, acc), do: sum(n - 1, n + acc)
end

defmodule Math do
  def sum(list), do: sum_list(list, 0)

  defp sum_list([], acc), do: acc
  defp sum_list([head | tail], acc), do: sum_list(tail, head + acc)
end

defmodule Sort do
  def asc([]), do: []
  def asc([a]), do: [a]
  def asc(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(
      asc(list_a),
      asc(list_b),
      []
    )
  end

  defp merge([], list_b, merged), do: merged ++ list_b
  defp merge(list_a, [], merged), do: merged ++ list_a
  defp merge([head_a | tail_a], list_b = [head_b | _], merged) when head_a <= head_b do
    merge(tail_a, list_b, merged ++ [head_a])
  end
  defp merge(list_a = [head_a | _], [head_b | tail_b], merged) when head_a > head_b do
    merge(list_a, tail_b, merged ++ [head_b])
  end
end
