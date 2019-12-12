defmodule CharacterAttributes do
  def total_points(%{ strength: strength, dexterity: dexterity, intelligence: intelligence }) do
    (strength * 2) + (dexterity + intelligence) * 3
  end
end
