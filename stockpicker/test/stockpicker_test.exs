defmodule StockpickerTest do
  use ExUnit.Case
  doctest Stockpicker

  test "greets the world" do
    assert Stockpicker.hello() == :world
  end
end
