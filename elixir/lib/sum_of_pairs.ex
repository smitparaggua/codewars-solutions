defmodule CodeWars.SumOfPairs do
  @moduledoc """
  Given a list of integers and a single sum value, return the first two values
  (parse from the left please) in order of appearance that add up to form the
  sum.

  ```
  sum_pairs([4, 3, 2, 3, 4],         6)
  #          ^-----^         4 + 2 = 6, indices: 0, 2 *
  #             ^-----^      3 + 3 = 6, indices: 1, 3
  #                ^-----^   2 + 4 = 6, indices: 2, 4
  #  * entire pair is earlier, and therefore is the correct answer
  == {4, 2}
  ```

  https://www.codewars.com/kata/sum-of-pairs
  """

  def sum_pairs(collection, sum) do
    do_sum_pairs(%{}, sum, collection)
  end

  defp do_sum_pairs(_tried, _sum, []), do: nil

  defp do_sum_pairs(tried, sum, [head | tail]) do
    needed = sum - head
    case tried[needed] do
      true -> {needed, head}
        _ -> do_sum_pairs(Map.put(tried, head, true), sum, tail)
    end
  end
end
