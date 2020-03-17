defmodule EmqxPluginDemoTest do
  use ExUnit.Case
  doctest EmqxPluginDemo

  test "greets the world" do
    assert EmqxPluginDemo.hello() == :world
  end
end
