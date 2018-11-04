defmodule Dictionary do
  @moduledoc """
   API for the Dictionary.
  """
  defdelegate random_word(), to: Dictionary.WordList
end
