defmodule Adventofcode.Day1 do
  def solve(string) do
    string
    |> String.split("\n")
    |> Enum.map(fn i -> Integer.parse(i) end)
    |> Enum.map(fn {i, _} -> i end)
    |> Enum.sum()
  end
end
