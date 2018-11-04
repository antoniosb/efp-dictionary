defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  describe "start/0" do
    test "returns a list of words" do
      assert is_list(Dictionary.start())
    end
  end

  describe "random_word/1" do
    test "returns a random word" do
      word_list = Dictionary.start()
      assert is_binary(Dictionary.random_word(word_list))
    end
  end
end
