defmodule BackportingDemoTest do
  use ExUnit.Case
  doctest BackportingDemo

  test "greets the world" do
    assert BackportingDemo.hello() == :planet!
  end
end
