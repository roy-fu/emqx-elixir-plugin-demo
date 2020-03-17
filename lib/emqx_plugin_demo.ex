defmodule EmqxPluginDemo do
  use Application

  @moduledoc """
  Documentation for `EmqxPluginDemo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EmqxPluginDemo.hello()
      :world

  """
  def hello do
    :world
  end

  def start(_type, _args) do
    EmqxPluginDemo.Body.load([])
    EmqxPluginDemo.Supervisor.start_link([])
  end

  def stop(_app) do
    EmqxPluginDemo.Body.unload()
  end
end
