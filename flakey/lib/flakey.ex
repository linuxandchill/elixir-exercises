defmodule Flakey do
  @moduledoc """
  with start/2 the application and supervisor are started automatically
  """
  use Application

  def start(_type, _args) do 
    Flakey.Supervisor.start_link
  end



end
