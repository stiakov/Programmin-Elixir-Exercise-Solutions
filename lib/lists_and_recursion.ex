defmodule ListAndRecursion do

  # ===== ➤ EXERCISE: ListAndRecursion-1 (Pag. 77) ======

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


  # ===== ➤ EXERCISE: ListAndRecursion-2 (Pag. 77) ======

  def my_max(list, max_value \\ 0)
  def my_max([], max_value), do: max_value
  def my_max([head | tail], max_value) when head >= max_value, do: my_max(tail, head)
  def my_max([head | tail], max_value) when head <= max_value, do: my_max(tail, max_value)

  # ===== ➤ EXERCISE: ListAndRecursion-3 (Pag. 77) ======
  def caesar(list \\ [], plus \\ 13)
  def caesar([], _plus), do: ''
  def caesar([head | tail], plus) when head + plus > ?z do
    [ head - plus | caesar(tail, plus)]
  end
  def caesar([head | tail], plus) when head + plus < ?z do
    [ head + plus | caesar(tail, plus)]
  end
  def caesar_decode(list), do: List.to_string list
end
