defmodule AgeFinder do 
  defstruct [name: nil, age: nil]

  def age(person) do
    IO.puts person.age
  end
end
