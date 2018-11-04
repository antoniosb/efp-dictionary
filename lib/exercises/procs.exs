defmodule Procs do
  def greeter(count) do
    receive do
      {:add, n} ->
        greeter(count + n)

      {:reset} ->
        greeter(0)

      msg ->
        IO.puts("#{count}: Hello #{inspect(msg)}")
        greeter(count)
    end
  end

  # use to receive messages with send:
  # obs: the recursion un line 8 prevents it from exiting after first call
  # iex> pid = spawn Procs, :greeter, []
  # iex> send pid, "world"
  # Hello "world"
end
