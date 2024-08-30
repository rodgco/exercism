defmodule Lasagna do
  @doc """
  Lasagna is a delicious meal that can be ready in 40 minutes.
  """
  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven, do: 40

  @doc """
  Calculate the remaining minutes based on the elapsed minutes.
  """
  @spec remaining_minutes_in_oven(integer) :: integer
  def remaining_minutes_in_oven(elapsed_minutes) do
    expected_minutes_in_oven() - elapsed_minutes
  end

  @doc """
  Calculate the preparation time based on the number of layers.
  """
  @spec preparation_time_in_minutes(integer) :: integer
  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end

  @doc """
  Calculate the total time based on the number of layers and the elapsed minutes.
  """
  @spec total_time_in_minutes(integer, integer) :: integer
  def total_time_in_minutes(number_of_layers, elapsed_minutes) do
    preparation_time_in_minutes(number_of_layers) + elapsed_minutes
  end

  @doc """
  Alarm that should ring when the lasagna is ready!
  """
  @spec alarm() :: String.t
  def alarm, do: "Ding!"
end
