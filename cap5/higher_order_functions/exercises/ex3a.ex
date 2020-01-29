defmodule RecursiveFibonacci do
  def sequence(n) when is_integer(n) and n > 1 do
    Enum.map(1..n, &fib(&1))
  end

  defp fib(n, current \\ 0, next \\ 1)
  defp fib(0, current, _next), do: current
  defp fib(n, current, next), do: fib(n-1, next, current + next)
end
