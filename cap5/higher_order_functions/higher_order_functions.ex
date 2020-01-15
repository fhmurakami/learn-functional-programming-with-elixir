defmodule HigherOrderFunctions do
  def compose(f, g) do
    fn arg -> f.(g.(arg)) end
  end
end

# Example 1:
# c("higher_order_functions.ex")
# import HigherOrderFunctions
# first_letter_and_upcase = compose(&String.upcase/1, &String.first/1)
# first_letter_and_upcase.("works")
# Output:
# "W"
#
# Example 2:
# first_letter_and_upcase = &(&1 |> String.first |> String.upcase)
# first_letter_and_upcase.("works")
# Output:
# "W"
