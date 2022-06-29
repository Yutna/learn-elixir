# My version
defmodule CharacterAttribute do
  @strength_multiplyer 2
  @dexterity_multiplyer 3
  @intelligence_multiplyer 3

  def total_points(character_states) do
    %{
      strength: strength_value,
      dexterity: dexterity_value,
      intelligence: intelligence_value
    } = character_states

    strength_points = strength_value * @strength_multiplyer
    dexterity_points = dexterity_value * @dexterity_multiplyer
    intelligence_points = intelligence_value * @intelligence_multiplyer

    strength_points + dexterity_points + intelligence_points
  end
end

# Book version
# defmodule CharacterAttributes do
#   def total_spent(%{strength: str, dexterity: dex, intelligence: int}) do
#     (str * 2) + (dex * 3) + (int * 3)
#   end
# end

# c("lib/character_attribute.ex")
# CharacterAttribute.total_points(%{strength: 16, dexterity: 15, intelligence: 21})
# => 20.0
