defmodule IncomeTax do
  def net_wage(income) do
    income - tax(income)
  end

  def tax(income) when income <= 2_000, do: 0
  def tax(income) when income <= 3_000, do: income * 0.05
  def tax(income) when income <= 6_000, do: income * 0.1
  def tax(income) when income > 6_000, do: income * 0.15
end
