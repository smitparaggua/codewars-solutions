defmodule CodeWars.SevenDivisibilityTest do
  use ExUnit.Case, async: true
  import CodeWars.SevenDivisibility, only: [seven_divisibility: 1]

  test "returns the same number (0 steps) when less than 2 digits" do
    assert seven_divisibility(20) == [20, 0]
    assert seven_divisibility(57) == [57, 0]
    assert seven_divisibility(78) == [78, 0]
  end

  test "support for one step calculations" do
    assert seven_divisibility(101) == [8, 1]
    assert seven_divisibility(907) == [76, 1]
  end

  test "support for large numbers" do
    assert seven_divisibility(477557101) == [28, 7]
    assert seven_divisibility(477557102) == [47, 7]
  end
end
