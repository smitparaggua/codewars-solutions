defmodule CodeWars.ColorChoiceTest do
  use ExUnit.Case

  import CodeWars.ColorChoice, only: [checkchoose: 2, factorial: 1]

  describe "factorial" do
    test "0 factorial is 1" do
      assert factorial(0) == 1
    end

    test "2 factorial is 2" do
      assert factorial(2) == 2
    end

    test "3 factorial is 6" do
      assert factorial(3) == 6
    end
  end

  describe "checkchoose" do
    test "returns 1 when m == n" do
      assert checkchoose(20, 20) == 1
      assert checkchoose(10, 10) == 1
      assert checkchoose(37, 37) == 1
    end

    test "returns 1 when solution does not exist" do
      assert checkchoose(4, 2) == -1
    end

    test "returns r in m = n C r" do
      assert checkchoose(18855883575, 76) == 8
    end
  end
end
