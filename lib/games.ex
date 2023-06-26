defmodule Games do
  @moduledoc """
  Documentation for `Games`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Games.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule Games.GuessingGame do
  def play do
    random_int = Enum.random(1..10)
    int_parse = IO.gets("Guess a number betwees 1 and 10\n")
    {int, _} = Integer.parse(int_parse)
    cond do
      int == random_int -> "You win!"
      int != random_int-> "Incorrect!"
    end
  end
end
