defmodule Chatbot do
  @moduledoc """
  Documentation for `Chatbot`.
  """

  @doc """
  Start chatbot using this method

      Example:

      Chatbot.start()
  """
  def start() do
    input = IO.gets("User: ")

    normalized = normalize_input(input)

    run(normalized)
  end

  defp normalize_input(input) do
    input
    |> String.trim("\n")
    |> String.downcase()
  end

  defp run("quit"), do: System.halt(0)

  defp run(input) when is_binary(input) do
    # TODO implement OpenAI context here
    IO.puts("Hello :D")

    start()
  end
end
