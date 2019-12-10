defmodule Exercise1 do
  @bread_price 0.1
  @milk_price 2.0
  @cake_price 15.0

  def total_cost(bread_slices, milk_bottles, cakes) do
    cost = (bread_slices * @bread_price) + (milk_bottles * @milk_price) + (cakes * @cake_price)
  end
end
