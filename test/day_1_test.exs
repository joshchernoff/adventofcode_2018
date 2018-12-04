defmodule Day1Test do
  use ExUnit.Case

  test "solves day1" do
    assert Adventofcode.Day1.solve("+1\n+10\n-20\n+22") == 13
  end
end
