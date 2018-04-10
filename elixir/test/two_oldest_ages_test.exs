defmodule CodeWars.TwoOldestAgesTest do
  use ExUnit.Case, async: true
  import CodeWars.TwoOldestAges, only: [two_oldest_ages: 1]

  test "should return 18 and 83 for input [6,5,83,5,3,18]" do
    assert two_oldest_ages([6,5,83,5,3,18]) == [18, 83]
  end

  test "should return 45 and 87 for input [1,5,87,45,8,8]" do
    assert two_oldest_ages([1,5,87,45,8,8]) == [45, 87]
  end
end
