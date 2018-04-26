defmodule CodeWars.BankersPlanFortuneTest do
  use ExUnit.Case, async: true

  import CodeWars.BankersPlan, only: [fortune: 5]

  test "returns true when initial is positive and years == 0" do
    assert fortune(100, 1, 200, 0, 1)
  end

  test "returns false when initial is negative" do
    refute fortune(-5, 1, 200, 0, 1)
  end

  test "return true when money is left after provided years" do
    assert fortune(100000, 1, 2000, 15, 1)
  end

  test "return false when money is not sustained after provided years" do
    refute fortune(100000, 1, 9185, 12, 1)
  end
end
