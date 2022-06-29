# defmodule Checkout do
#   # def total_cost(price, tax_rate) do
#   #   price * (tax_rate + 1)
#   # end

#   def total_cost(price, tax_rate), do: price * (tax_rate + 1)
# end

# defmodule Checkout do
#   def total_cost(price, quantity \\ 10), do: price * quantity
# end

# defmodule Checkout do
#   def total_cost(price), do: total_cost(price, 10)
#   def total_cost(price, quantity), do: price * quantity
# end

# defmodule Checkout do
#   def total_cost(price, tax_rate) when price >= 0 and tax_rate >= 0 do
#     price * (tax_rate + 1)
#   end
# end

defmodule Checkout do
  defguard is_rate(value) when is_float(value) and value >= 0 and value <= 1
  defguard is_cents(value) when is_integer(value) and value >= 0

  def total_cost(price, tax_rate) when is_cents(price) and is_rate(tax_rate) do
    price + tax_cost(price, tax_rate)
  end

  def tax_cost(price, tax_rate) when is_cents(price) and is_rate(tax_rate) do
    price * tax_rate
  end
end
