defmodule CodeWars.Rot13Test do
  use ExUnit.Case, async: true
  import CodeWars.Rot13, only: [encrypt: 1]

  test "non-letter string is not affected" do
    assert encrypt("123@#$%-;") == "123@#$%-;"
  end

  test "a letter is offsetted by 13 positions" do
    assert encrypt("e") == "r"
  end

  test "does not affect case" do
    assert encrypt("E") == "R"
  end

  test "combination of characters" do
    assert encrypt("Test123-") == "Grfg123-"
  end
end
