defmodule MyList do
  def each([], _function), do: nil
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  def map([], _function), do: []
  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end

  def reduce([], acc, _function), do: acc
  def reduce([head | tail], acc, function) do
    reduce(tail, function.(head, acc), function)
  end

  def filter([], _function), do: []
  def filter([head | tail], function) do
    if function.(head) do
      [head | filter(tail, function)]
    else
      filter(tail, function)
    end
  end
end

# IEx:
#
# enchanted_items = [
#   %{title: "Edwin's Longsword", price: 150},
#   %{title: "Healing Potion", price: 60},
#   %{title: "Edwin's Rope", price: 30},
#   %{title: "Dragon's Spear", price: 100}
# ]
#
# increase_price = fn item -> update_in(item.price, &(&1 * 1.1)) end
#
# MyList.map(enchanted_items, increase_price)
#
# Output:
# [
#    %{price: 165.0, title: "Edwin's Longsword"},
#    %{price: 66.0, title: "Healing Potion"},
#    %{price: 33.0, title: "Edwin's Rope"},
#    %{price: 110.00000000000001, title: "Dragon's Spear"}
# ]
#
# sum_price = fn item, sum -> item.price + sum end
# MyList.reduce(enchanted_items, 0, sum_price)
#
# Output:
# 340
#
# MyList.filter(enchanted_items, fn item -> item.price < 70 end)
#
# Output:
# [%{price: 60, title: "Healing Potion"}, %{price: 30, title: "Edwin's Rope"}]
