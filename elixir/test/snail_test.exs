defmodule CodeWars.SnailTest do
  use ExUnit.Case, async: true
  alias CodeWars.Snail

  test "single element" do
    assert Snail.snail([[1]]) == [1]
  end

  test "single row" do
    assert Snail.snail([[1, 2, 3]]) == [1, 2, 3]
  end

  test "single column" do
    assert Snail.snail([[1], [2], [3]]) == [1, 2, 3]
  end

  test "3x3" do
    assert Snail.snail([
      [ 1, 2, 3 ],
      [ 4, 5, 6 ],
      [ 7, 8, 9 ]
    ]) == [ 1, 2, 3, 6, 9, 8, 7, 4, 5 ]
  end
end
