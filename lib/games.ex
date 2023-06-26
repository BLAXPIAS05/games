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

defmodule Games.RockPaperScissors do
  def play do
    ai_choice = Enum.random([:rock, :paper, :scissors])
    user_choice = IO.gets("Choose rock, paper, or scissors\n") |> String.trim() |> String.to_atom()
    cond do
      ai_choice == user_choice -> "Draw"
      beats?(ai_choice, user_choice) -> "You lose! #{ai_choice} beats #{user_choice}."
      :otherwise -> "You win! #{user_choice} beats #{ai_choice}."
    end
  end

  defp beats?(:rock, :scissors) do
    true
  end

  defp beats?(:paper, :rock) do
    true
  end

  defp beats?(:scissors, :paper) do
    true
  end

  defp beats?(_, _) do
    false
  end
end
