defmodule Adventofcode.Day2 do
  def solve(stream) do
    stream
    |> String.split("\n")
    |> solve(stream, [0], nil)
  end

  # First pass on loop
  def solve([h | t], stream, [0], nil) do
    {i, _} = Integer.parse(h)
    solve(t, stream, [i | [0]], nil)
  end

  # Problem solve. Super slow, need a way to lazy search frequencies 
  def solve([h | t], stream, [current_frequency | _] = frequencies, nil) do
    {i, _} = Integer.parse(h)
    new_frequency = i + current_frequency

    found = Enum.find(frequencies, fn j -> new_frequency == j end)
    solve(t, stream, [new_frequency | frequencies], found)
  end

  # Time to loops the stream
  def solve([], stream, frequency, nil) do
    stream
    |> String.split("\n")
    |> solve(stream, frequency, nil)
  end

  # FOUND IT
  def solve(_, _, _, found), do: found
end
