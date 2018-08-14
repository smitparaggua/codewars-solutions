defmodule CodeWars.PrimesInNumbers do
  def prime_factors(n) do
    case prime_factors(n, []) do
      [] -> "(#{n})"
      factors ->
        factors
        |> Enum.map(&show_factor/1)
        |> Enum.reverse()
        |> Enum.join()
    end
  end

  defp show_factor({factor, 1}), do: "(#{factor})"
  defp show_factor({factor, count}), do: "(#{factor}**#{count})"

  defp prime_factors(1, found_factors), do: found_factors

  defp prime_factors(n, found_factors) do
    case find_factor(n) do
      nil -> [{n, 1}] ++ found_factors
      factor ->
        {new_n, count} = decompose(div(n, factor), factor, 1)
        found_factors = [{factor, count}] ++ found_factors
        prime_factors(new_n, found_factors)
    end
  end

  defp find_factor(n) when n <= 3, do: n

  defp find_factor(n) do
    max_factor = n |> :math.sqrt() |> trunc()
    2..max_factor
    |> Enum.find(fn x-> rem(n, x) == 0 end)
  end

  defp decompose(n, factor, count) when n < factor, do: {n, count}

  defp decompose(n, factor, count) do
    case rem(n, factor) do
      0 -> decompose(div(n, factor), factor, count + 1)
      _ -> {n, count}
    end
  end
end
