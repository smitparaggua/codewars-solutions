defmodule CodeWars.SumOfPairsTest do
  use ExUnit.Case, async: true
  alias CodeWars.SumOfPairs

  test "returns nil on empty list" do
    assert SumOfPairs.sum_pairs([], 10) == nil
  end

  test "returns the same pair when collection has a solution" do
    assert SumOfPairs.sum_pairs([1, 2], 3) == {1, 2}
    assert SumOfPairs.sum_pairs([4, 1, 2], 3) == {1, 2}
    assert SumOfPairs.sum_pairs([ 1, -2, 3, 0, -6, 1 ], -6) == {0, -6}
  end

  test "returns nil when list does not contain the solution" do
    assert SumOfPairs.sum_pairs([1, 2], 10) == nil
  end
end
