defmodule Procs do
  def greeter(name) do
    Process.sleep(1500)
    IO.puts("Hello #{name}")
  end

  # used in the 2nd form of spawn
  # iex> spawn Procs, :greeter, ["world"]
end
