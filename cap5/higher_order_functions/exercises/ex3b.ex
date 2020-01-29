defmodule Fibonacci do
  def sequence(n) do
    Stream.unfold({1, 1}, fn {a, b} -> {a, {b, a + b}} end)
    |> Enum.take(n)
  end
end
