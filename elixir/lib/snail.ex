defmodule CodeWars.Snail do

  @doc """
  https://www.codewars.com/kata/snail

  Converts a matrix to a list by walking around its edges from the top-left going clockwise.

  ![snail walk](http://www.haan.lu/files/2513/8347/2456/snail.png)

  iex> Snail.snail( [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ] )
  [ 1, 2, 3, 6, 9, 8, 7, 4, 5 ]

  """

  @spec snail( [ [ term ] ] ) :: [ term ]

  def snail(matrix) do
    do_snail(matrix, :right, [])
  end

  defp do_snail([], _direction, acc) do
    acc
  end

  defp do_snail([[i]], _direction, acc) do
    acc ++ [i]
  end

  defp do_snail(matrix, :right, acc) do
    {first, rest} = List.pop_at(matrix, 0)
    do_snail(rest, :down, acc ++ first)
  end

  defp do_snail(matrix, :down, acc) do
    {right_elements, rest} =
      Enum.map(matrix, fn row -> List.pop_at(row, -1) end)
      |> Enum.reduce({[], []}, &collect_popped_elements/2)

    rest = Enum.reject(rest, &Enum.empty?/1)
    do_snail(rest, :left, acc ++ right_elements)
  end

  defp do_snail(matrix, :left, acc) do
    {last, rest} = List.pop_at(matrix, -1)
    acc = acc ++ Enum.reverse(last)
    do_snail(rest, :up, acc)
  end

  defp do_snail(matrix, :up, acc) do
    {first_elements, rest} =
      Enum.map(matrix, fn row -> List.pop_at(row, 0) end)
      |> Enum.reduce({[], []}, &collect_popped_elements/2)

    rest = Enum.reject(rest, &Enum.empty?/1)
    do_snail(rest, :right, acc ++ Enum.reverse(first_elements))
  end

  defp collect_popped_elements({popped, rest}, {popped_collection, rest_collection}) do
    {popped_collection ++ [popped], rest_collection ++ [rest]}
  end
end
