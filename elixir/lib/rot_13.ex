defmodule CodeWars.Rot13 do
  def encrypt(string) do
    string
    |> String.to_charlist()
    |> Enum.map(&map_character/1)
    |> to_string()
  end

  defp map_character(char) do
    cond do
      Enum.member?(?a..?m, char) || Enum.member?(?A..?M, char) -> char + 13
      Enum.member?(?n..?z, char) || Enum.member?(?N..?Z, char)-> char - 13
      true -> char
    end
  end
end
