defmodule Dictionary.WordList do
  @moduledoc """
  This module reads the wordlist file and gives us a random word.
  """
  def start do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word(word_list) do
    word_list
    |> Enum.random()
  end
end
