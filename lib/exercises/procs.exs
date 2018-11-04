defmodule Procs do
  def greeter(what_to_say) do
    receive do
      msg ->
        IO.puts("#{what_to_say}:  #{inspect(msg)}")
    end

    greeter(what_to_say)
  end

  # use to receive messages with send:
  # obs: the recursion un line 8 prevents it from exiting after first call
  # iex> pid = spawn Procs, :greeter, []
  # iex> send pid, "world"
  # Hello "world"
end
