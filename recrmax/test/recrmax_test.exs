defmodule RecrmaxTest do
  use ExUnit.Case
  doctest Recrmax

  test "find the max of a list" do
    assert Recrmax.max([1, 2, 3, 4]) == 4
  end

  test "raise Enum.EmptyError if the provided list im empty" do
    assert_raise Enum.EmptyError, fn ->
      Recrmax.max([])
    end
  end
end
