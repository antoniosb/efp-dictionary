defmodule Dictionary do
  def word_list do
    File.read!("assets/words.txt")
    |> String.split(~r/\n/)
  end

  def random_word() do
    word_list() |> Enum.random()
  end
end
