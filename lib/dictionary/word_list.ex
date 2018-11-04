defmodule Dictionary.WordList do
  @moduledoc """
  This module reads the wordlist file and gives us a random word.
  """

  def start_link() do
    Agent.start_link(&start/0)
  end

  def random_word(agent) do
    Agent.get(agent, &Enum.random/1)
  end

  defp start do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
