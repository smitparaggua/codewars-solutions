defmodule CodeWars.ThirteenDivisibilityTest do
  use ExUnit.Case, async: true

  import CodeWars.ThirteenDivisibility, only: [thirt: 1]

  test "returns the same number if the input is a stationary number" do
    assert thirt(87) == 87
  end

  test "1-step stationary number" do
    assert thirt(178) == 87
  end

  test "7-digit stationary number" do
    assert thirt(1234567) == 87
  end

  test "9-digit stationary number" do
    assert thirt(987654321) == 30
  end
end
