defmodule Flakey.Service do 
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  #called with 'args' in start_link/3
  #second arg
  def init(:ok) do 
    {:ok, :ok}
  end

  def check() do
    GenServer.call(__MODULE__, {:check})
  end

  def handle_call({:check}, _from, :ok) do
    {:reply, :ok, :ok}
  end
end
