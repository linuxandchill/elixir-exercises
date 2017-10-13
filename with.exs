defmodule Withy do
  def get_stuff(file) do 
    with {:ok, stuff} <- File.read(file), 
    {:ok, info} <- reprint(file) do 
      "The file says: #{stuff} // The name of the file is: #{info}"
    else 
      {:error, reason} -> "The error is #{reason}"
    end
  end

  def reprint(data) do 
    {:ok, data}
  end
end
