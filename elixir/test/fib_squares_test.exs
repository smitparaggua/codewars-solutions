defmodule CodeWars.FibSquaresTest do
  use ExUnit.Case, async: true
  import CodeWars.FibSquares, only: [perimeter: 1]

  test "1 square" do
    assert perimeter(0) == 4
  end

  test "series of squares" do
    assert perimeter(1) == 8
    assert perimeter(2) == 16
    assert perimeter(3) == 28
    assert perimeter(4) == 48
    assert perimeter(5) == 80
    assert perimeter(6) == 132
    assert perimeter(7) == 216
  end
end
