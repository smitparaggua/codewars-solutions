defmodule CodeWars.PrimesInNumbersTest do
  use ExUnit.Case, async: true

  import CodeWars.PrimesInNumbers, only: [prime_factors: 1]

  @moduletag :wip

  test "returns the same number as factor when prime number" do
    assert prime_factors(7) == "(7)"
  end

  test "multiple distinct factors" do
    assert prime_factors(6) == "(2)(3)"
    assert prime_factors(42) == "(2)(3)(7)"
  end

  test "single repeated factor" do
    assert prime_factors(8) == "(2**3)"
  end

  test "multiple repeated factors" do
    assert prime_factors(7775460) == "(2**2)(3**3)(5)(7)(11**2)(17)"
  end
end
