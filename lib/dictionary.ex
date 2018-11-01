defmodule Dictionary do
  @moduledoc """
  This module reads the wordlist file and gives us a random word.
  """
  def word_list do
    "assets/words.txt"
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word do
    word_list()
    |> Enum.random()
  end
end
