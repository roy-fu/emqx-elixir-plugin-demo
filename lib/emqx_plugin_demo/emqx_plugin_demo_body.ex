defmodule EmqxPluginDemo.Body do

  def load(env) do
    :emqx.hook(:"client.connect", &EmqxPluginDemo.Body.on_client_connected/3, [env])

  end

  def on_client_connected(returncode, client, env) do
    IO.inspect(["elixir on_client_connected", client, returncode, env])
    :ok
  end

  def unload do
    :emqx.unhook(:"client.connect", &EmqxPluginDemo.Body.on_client_connected/3)
  end
end
