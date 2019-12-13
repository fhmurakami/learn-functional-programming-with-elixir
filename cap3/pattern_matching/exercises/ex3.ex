# Create a function that calculates income tax following these rules: a salary equal or below $2000 pays no tax, below or equal to $3000 pays 5%; below or equal to $6000 pays 10%; everything higher than $6000 pays 15%.

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
