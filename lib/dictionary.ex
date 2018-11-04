defmodule Dictionary do
  @moduledoc """
   API for the Dictionary.
  """

  defdelegate start(), to: Dictionary.WordList, as: :start_link
  defdelegate random_word(agent_id), to: Dictionary.WordList
end
