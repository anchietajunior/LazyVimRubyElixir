defmodule MyModule do
  def saysomething(message) do
    IO.puts(message)
    another_message()
  end

  defp another_message() do
    IO.puts("Elixir and Neovim")
  end
end
