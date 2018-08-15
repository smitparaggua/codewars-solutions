defmodule CodeWars.FibSquares do
  @moduledoc """
  https://www.codewars.com/kata/perimeter-of-squares-in-a-rectangle

  The drawing shows 6 squares the sides of which have a length of
  1, 1, 2, 3, 5, 8. It's easy to see that the sum of the perimeters of these
  squares is : 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80

  Could you give the sum of the perimeters of all the squares in a rectangle
  when there are n + 1 squares disposed in the same manner as in the drawing:

  http://i.imgur.com/EYcuB1wm.jpg

  """

  def perimeter(n), do: 4 * fib_sum(n + 1, {0, 1, 0})

  defp fib_sum(0, {_, _, sum}), do: sum

  defp fib_sum(n, {first, second, sum}) do
    fib_sum(n - 1, {second, first + second, sum + second})
  end
end
