defmodule CalculateIncome do
  def net_wage(salary) do
    salary - tax(salary)
  end

  def tax(salary) when salary <= 2_000, do: 0
  def tax(salary) when salary <= 3_000, do: salary * 0.05
  def tax(salary) when salary <= 6_000, do: salary * 0.1
  def tax(salary), do: salary * 0.15
end

salary = case Float.parse(IO.gets "Plean enter your salary:\n") do
  :error -> IO.puts "Error! please enter your salary with number format."
  {salary, _} -> salary
end

tax = CalculateIncome.tax(salary)
net_wage = CalculateIncome.net_wage(salary)

IO.puts "Tax: #{tax}"
IO.puts "Net wage: #{net_wage}"

# elixir lib/calculate_income.exs
