defmodule Procs do
  def greeter() do
    receive do
      msg ->
        IO.puts("Hello #{inspect(msg)}")
    end

    greeter()
  end

  # use to receive messages with send:
  # obs: the recursion un line 8 prevents it from exiting after first call
  # iex> pid = spawn Procs, :greeter, []
  # iex> send pid, "world"
  # Hello "world"
end
