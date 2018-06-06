defmodule CodeWars.IpValidationTest do
  use ExUnit.Case, async: true

  import CodeWars.IpValidation, only: [valid_ip?: 1]

  describe "valid_ip?" do
    test "accepts valid ip" do
      assert valid_ip?("1.2.3.4")
    end

    test "rejects 3 octets" do
      refute valid_ip?("1.2.3")
    end

    test "rejects letters" do
      refute valid_ip?("abc.def.hij.klm")
    end

    test "rejects numbers not in 0..255" do
      refute valid_ip?("1.2.3.256")
    end

    test "rejects leading zeros" do
      refute valid_ip?("1.2.3.04")
    end
  end
end
