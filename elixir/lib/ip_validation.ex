defmodule CodeWars.IpValidation do
  @moduledoc """
  Write an algorithm that will identify valid IPv4 addresses in dot-decimal
  format. IPs should be considered valid if they consist of four octets, with
  values between 0..255 (included).

  Input to the function is guaranteed to be a single string.
  Examples

  // valid inputs:
  1.2.3.4
  123.45.67.89

  // invalid inputs:
  1.2.3
  1.2.3.4.5
  123.456.78.90
  123.045.067.089

  Note: leading zeros (e.g. 01.02.03.04) are considered not valid in this kata!
  """

  def valid_ip?(ip) do
    fragments = String.split(ip, ".")
    Enum.count(fragments) == 4 && Enum.all?(fragments, &valid_octet?/1)
  end

  defp valid_octet?(octet) do
    case Integer.parse(octet) do
      {number, ""} ->
        Enum.member?(0..255, number) && Integer.to_string(number) == octet

      _ -> false
    end
  end
end
