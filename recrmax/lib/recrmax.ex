defmodule Recrmax do
  def max([]), do: raise Enum.EmptyError

  def max([head|tail]), do: _max(tail, head)

  defp _max([], current), do: current

  defp _max([head|tail], current) when current < head do
    _max(tail, head)
  end

  defp _max([_|tail], current), do: _max(tail, current)
end
