defmodule Exruby.MapTest do
  use ExUnit.Case
  doctest Exruby.Map

  test "access of standart Elixir.Map methods" do
    assert Exruby.Map.get(%{a: 1}, :a) == 1
  end
end
