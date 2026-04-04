defmodule BackportingDemoTest do
  use ExUnit.Case
  doctest BackportingDemo

  test "greets the world" do
    if Enum.random(1..3) == 1 do
      flunk()
    end

    assert BackportingDemo.hello() == :world
  end
end
