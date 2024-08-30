defmodule KitchenCalculator do
  @unit_to_ml %{ :cup => 240, :fluid_ounce => 30, :tablespoon => 15, :teaspoon => 5, :milliliter => 1 }

  def get_volume({_, volume}), do: volume
  def to_milliliter({ unit, volume }), do: { :milliliter, @unit_to_ml[unit] * volume}
  def from_milliliter({ :milliliter, volume }, unit), do: { unit, volume / @unit_to_ml[unit] }
  def convert(volume_pair, unit), do: volume_pair |> to_milliliter |> from_milliliter(unit)
end
