defmodule Dictionary do
  @moduledoc """
   API for the Dictionary.
  """

  defdelegate start(), to: Dictionary.WordList
  defdelegate random_word(word_list), to: Dictionary.WordList
end
