defmodule Day2Test do
  use ExUnit.Case

  test "solves day2" do
    assert Adventofcode.Day2.solve("+1\n-2\n+3\n+1\n+1\n-2") == 2
    assert Adventofcode.Day2.solve("+1\n-1") == 0
    assert Adventofcode.Day2.solve("+3\n+3\n+4\n-2\n-4") == 10
    assert Adventofcode.Day2.solve("-6\n+3\n+8\n+5\n-6") == 5
    assert Adventofcode.Day2.solve("+7\n+7\n-2\n-7\n-4") == 14
  end
end
