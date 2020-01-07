# We've created a function that sorts the items of a list in
# ascending order. Now create a Sort.descending/1 function that
# sorts the elements in descending order.

defmodule Sort do
  def descending([]), do: []
  def descending([a]), do: [a]
  def descending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(
      descending(list_a),
      descending(list_b)
    )
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a
  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a >= head_b do
    [head_a | merge(tail_a, list_b)]
  end
  defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a < head_b do
    [head_b | merge(list_a, tail_b)]
  end
end
