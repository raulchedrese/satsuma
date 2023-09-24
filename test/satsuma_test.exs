defmodule SatsumaTest do
  use ExUnit.Case
  doctest Satsuma

  test "greets the world" do
    assert Satsuma.hello() == :world
  end
end
