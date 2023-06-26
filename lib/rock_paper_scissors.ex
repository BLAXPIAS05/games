defmodule Games.RockPaperScissors do
  def play do
    ai_choice = Enum.random([:rock, :paper, :scissors])

    user_choice =
      IO.gets("Choose rock, paper, or scissors\n") |> String.trim() |> String.to_atom()

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
