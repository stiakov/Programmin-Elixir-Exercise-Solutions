defmodule Chop do
  # ===== ➤ EXERCISE: ModulesAndFunctions-6 (Pag. 62) ======

  def guess(actual, min..max) when (actual < min) or (actual > max),
    do: 'Out of range!'

  def guess(actual, min..max) do
    mid = div(min + max, 2)
    IO.puts "Is it #{mid}?"
    _finder(actual, min..max, mid)
  end

  defp _finder(origin, _, seek) when origin == seek,
    do: seek
  defp _finder(origin, min.._, seek) when origin < seek,
    do: guess(origin, min..(seek - 1))
  defp _finder(origin, _..max, seek) when origin > seek,
    do: guess(origin, (seek + 1)..max)
end

IO.puts(Chop.guess(273, 1..1000))
