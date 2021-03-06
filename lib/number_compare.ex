# defmodule NumberCompare do
#   def greater(number, other_number) do
#     check(number >= other_number, number, other_number)
#   end

#   defp check(true, number, _), do: number
#   defp check(false, _, other_number), do: other_number
# end

defmodule NumberCompare do
  def greater(number, other_number) when number >= other_number, do: number
  def greater(_, other_number), do: other_number
end

# number_compare = fn
#   number, other_number when number >= other_number -> number
#   _, other_number -> other_number
# end
