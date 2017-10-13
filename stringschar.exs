defmodule User do
  alias IO, as: IU
  @moduledoc "testing defimpl"
  defstruct [name: nil]

  @spec printy() :: number
  def printy do 
    IU.puts "IO swtiched up bishhh"
  end

  @doc "implements String.chars for User struct"
  defimpl String.Chars, for: User do 
    def to_string(user), do: "#{user.name}" 
  end
  defmodule Run do 
    def run do 
      IO.puts "Welcome #{ %User{name: "John"} }"
    end
  end

end
