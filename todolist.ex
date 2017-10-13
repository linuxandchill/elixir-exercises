defmodule TodoList do 
  def new, do: Map.new

  def add_item(list, date, title) do 
    Map.update(
               list,
               date,
               [title],
               fn(titles) -> [title | titles] end
             )
  end

  def entries(list, date) do 
    Map.get(list, date, [])
  end
end

defmodule MultiDict do
  def new, do: Map.new
  def add(dict, key, value) do
    Map.update(
                    dict,
                    key,
                    [value],
                    &[value | &1]
                  )
  end
  def get(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoListy do
  def new, do: MultiDict.new
  def add_entry(todo_list, date, title) do
    MultiDict.add(todo_list, date, title)
  end
  def entries(todo_list, date) do
    MultiDict.get(todo_list, date)
  end
end
