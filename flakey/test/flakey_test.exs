defmodule FlakeyTest do
  use ExUnit.Case
  doctest Flakey

  test "greets the world" do
    assert Flakey.hello() == :world
  end
end
