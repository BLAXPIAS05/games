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
    user_choice = IO.gets("Choose rock, paper, or scissors\n") |> String.to_atom()
    cond do
      ai_choice == :rock and user_choice == :scissors -> "You lose! Rock beats scissors."
      ai_choice == :scissors and user_choice == :paper -> "You lose! Scissors beats paper."
      ai_choice == :paper and user_choice == :rock -> "You lose! Paper beats rock."
      ai_choice == :rock and user_choice == :paper -> "You win! Paper beats rock."
      ai_choice == :paper and user_choice == :scissors -> "You win! Scissors beats paper."
      ai_choice == :scissors and user_choice == :rock -> "You win! Rock beats scissors."
      ai_choice == user_choice -> "Draw"
    end
  end
end
