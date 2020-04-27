defmodule ListAndRecursion do
  defp map([], _func), do: []

  defp map([head | tail], func) do
    [func.(head) | map(tail, func)]
  end

  defp sum([], acum), do: acum

  defp sum([head | tail], acum) do
    sum(tail, head + acum)
  end

  @spec mapsum([any], any) :: number
  def mapsum(list, func) do
    map(list, func)
    |> sum(0)
  end
end
