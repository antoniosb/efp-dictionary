defmodule Exercises do
  @doc """
    Write a function that takes a two-element tuple as a parameter, and uses pattern matching to return a two element tuple with the values swapped (so pass it {2,5} and you’ll get {5,2} back).

    ## Examples:
      iex> Exercises.swap({5,2})
      {2,5}
  """
  def swap({a, b}) do
    {b, a}
  end

  @doc """
    Write a function that takes two parameters. It should return true if the parameters are the same, false otherwise. You aren’t allowed to use any conditional logic, so you’ll have to rely on pattern matching.

    ## Examples:
      iex> Exercises.same(1,1)
      true

      iex> Exercises.same(1,2)
      false
  """
  def same(a, a) do
    true
  end

  def same(_a, _b) do
    false
  end

  defmodule Lists do
    @moduledoc """
      List manipulation exercises.
    """

    @doc """
      Returns the length of a list.
      ## Examples:
        iex> Exercises.Lists.len([])
        0

        iex> Exercises.Lists.len([1,2,3])
        3
    """
    def len([]), do: 0
    def len([_ | t]), do: 1 + len(t)

    @doc """
      Sum the elements of a list.
      ## Examples:
        iex> Exercises.Lists.sum([])
        0

        iex> Exercises.Lists.sum([1,2,3,4])
        10
    """
    def sum([]), do: 0
    def sum([h | t]), do: h + sum(t)

    @doc """
      Double the elements of a list.
      ## Examples:
        iex> Exercises.Lists.double([])
        []

        iex> Exercises.Lists.double([1,2,3,4])
        [2,4,6,8]
    """
    def double([]), do: []
    def double([h | t]), do: [2 * h | double(t)]

    @doc """
      Squares the elements of a list.
      ## Examples:
        iex> Exercises.Lists.square([])
        []

        iex> Exercises.Lists.square([1,2,3,4])
        [1,4,9,16]
    """
    def square([]), do: []
    def square([h | t]), do: [h * h | square(t)]
  end
end
