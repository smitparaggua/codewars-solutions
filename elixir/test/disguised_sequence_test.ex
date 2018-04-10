defmodule CodWars.DisguisedSequenceTest do
  use ExUnit.Case, async: true

  alias CodeWars.DisguisedSequence

  describe "naive" do
    test "when n = 0, f(n) = 1" do
      assert DisguisedSequence.naive(0) == 1
    end
  end
end
