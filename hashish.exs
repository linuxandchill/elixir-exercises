defmodule Hashish do
  def hashit(listy) do 
    listy
    |> hash
    |> encode
  end

  def hash(data) when is_list(data) do 
    Enum.map(data, &(:crypto.hash(:sha256, &1)))
  end

  def encode(bitstring_list) when is_list(bitstring_list) do 
    Enum.map(bitstring_list, &(Base.encode64(&1, padding: false)))
  end
end
