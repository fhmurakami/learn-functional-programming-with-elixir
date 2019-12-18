# Create an Elixir script where users can type their salary and see the income tax and the net wage. You can use the module from the previous exercise, but this script should parse the user input and display a message when users type something that is not a valid number
defmodule IncomeTax do
  def calc(salary) do
    tax = cond do
      salary <= 2000 -> 0
      salary <= 3000 -> salary * 0.05
      salary <= 6000 -> salary * 0.1
      salary > 6000 -> salary * 0.15
    end

    tax
  end
end

user_input = IO.gets "Insert your salary: $"

case Float.parse(user_input) do
  :error -> IO.puts "Invalid salary: #{user_input}"
  {salary, _} ->
    income_tax = IncomeTax.calc(salary)
    net_wage = salary - income_tax

    IO.puts "Income tax: $#{income_tax}"
    IO.puts "Net wage: $#{net_wage}"
end
