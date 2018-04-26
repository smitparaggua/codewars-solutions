defmodule CodeWars.BankersPlan do
  @moduledoc """
  http://www.codewars.com/kata/bankers-plan?utm_source=newsletter
  """

  def fortune(initial, _, _, _, _) when initial < 0, do: false
  def fortune(_, _, _, years, _) when years <= 1, do: true

  def fortune(initial, interest_rate, withdrawal, years, inflation) do
    interest = initial * interest_rate / 100
    remaining = trunc(initial + interest - withdrawal)
    inflated_withdrawal = trunc(withdrawal + (withdrawal * inflation / 100))
    fortune(remaining, interest_rate, inflated_withdrawal, years - 1, inflation)
  end
end
