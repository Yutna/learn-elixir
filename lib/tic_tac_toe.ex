defmodule TicTacToe do
  defguard is_winner(a, b, c, atom) when a == atom and b == atom and c === atom

  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p1, p2, p3, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p4, p5, p6, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p7, p8, p9, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p1, p5, p9, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p9, p5, p1, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p3, p5, p7, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p7, p5, p3, :x), do: {:winner, :x}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p1, p2, p3, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p4, p5, p6, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p7, p8, p9, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p1, p5, p9, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p9, p5, p1, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p3, p5, p7, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }) when is_winner(p7, p5, p3, :o), do: {:winner, :o}
  def winner({ p1, p2, p3, p4, p5, p6, p7, p8, p9 }), do: {:no_winner}
end

# {
#   :p1, :p2, :p3,
#   :p4, :p5, :p6,
#   :p7, :p8, :p9
# } = board

# defp check(a, b, c, atom) when a == atom and b == atom and c === atom, do: {:winner, atom}
# defp check(a, b, c, atom) when a != atom or b != atom or c != atom, do: {:no_winner}

# p1, p2, p3 === :x
# p4, p5, p6 === :x
# p7, p8, p9 === :x
# p1, p5, p9 === :x
# p9, p5, p1 === :x
# p3, p5, p7 === :x
# p7, p5, p3 === :x

# p1, p2, p3 === :o
# p4, p5, p6 === :o
# p7, p8, p9 === :o
# p1, p5, p9 === :o
# p9, p5, p1 === :o
# p3, p5, p7 === :o
# p7, p5, p3 === :o
