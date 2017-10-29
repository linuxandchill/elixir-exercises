defmodule Genny do
  use GenServer

  def start do
    GenServer.start(Genny, nil)
  end

  def put(pid, key, value) do 
    GenServer.cast(pid, {:put, key, value})
  end

  def get(pid, key) do 
    GenServer.call(pid, {:get, key})
  end

  def init(_) do 
    ##{:ok, initial_state}
    {:ok, Map.new}
  end

  def handle_cast({:put, key, value}, state) do
    #{:noreply, new_state}
    {:noreply, Map.put(state, key, value)}
  end

  def handle_call({:get, key}, _, state) do 
    #{:reply, response, new_state}
    {:reply, Map.get(state, key), state}
  end

end
