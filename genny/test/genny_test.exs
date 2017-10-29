defmodule GennyTest do
  use ExUnit.Case
  doctest Genny

  test "greets the world" do
    assert Genny.hello() == :world
  end
end
