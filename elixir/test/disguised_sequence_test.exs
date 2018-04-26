defmodule CodeWars.DisguisedSequenceTest do
  use ExUnit.Case, async: true

  alias CodeWars.DisguisedSequence

  describe "naive" do
    test "when n = 0, f(n) = 1" do
      assert DisguisedSequence.naive(0) == 1
    end

    test "f(1) = 2" do
      assert DisguisedSequence.naive(1) == 2
    end

    test "f(17) = 131072" do
      assert DisguisedSequence.naive(17) == 131072
    end
  end

  describe "hidden_sequence" do
    test "when n = 0, f(n) = 1" do
      assert DisguisedSequence.hidden_sequence(0) == 1
    end

    test "f(1) = 2" do
      assert DisguisedSequence.hidden_sequence(1) == 2
    end

    test "f(17) = 131072" do
      assert DisguisedSequence.hidden_sequence(17) == 131072
    end
  end
end
