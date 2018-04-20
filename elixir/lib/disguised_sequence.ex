defmodule CodeWars.DisguisedSequence do
  @moduledoc """
  Given u_0 = 1, u_1 = 2 and the relation 6u_(n)u_(n+1)-5u_(n)u_(n+2)+u_n+1u_(n+2) = 0
  calculate u_n for any integer n >= 0.

  fct(n) returns un: fct(17) -> 131072, fct(21) -> 2097152

  https://www.codewars.com/kata/563f0c54a22b9345bf000053
  """

  def naive(0), do: 1
  def naive(1), do: 2

  def naive(n) do
    (6 * naive(n-1) * naive(n-2)) / (5 * naive(n-2) - naive(n-1))
  end

  def hidden_sequence(n) do
    :math.pow(2, n)
  end
end
