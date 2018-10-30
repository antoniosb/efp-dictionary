defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  describe "word_list/0" do
    test "returns a list of words" do
      assert is_list(Dictionary.word_list())
    end
  end

  describe "random_word/0" do
    test "returns a random word" do
      assert is_binary(Dictionary.random_word())
    end
  end
end
