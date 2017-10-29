defmodule BreadthFirst do

  defp house do 
    %{kitchen: ["knife", "spoon"], bedroom: ["bed", "lamp"], livingRoom: ["table", "chair"] }
  end

  def unexplored_rooms do 
    Agent.start(fn() -> Map.keys(house) end, [name: UnexploredRooms])
  end

  def explore_rooms do 
    Agent.start(fn() -> [] end, [name: ExploredRooms])
    start_room_check_count
  end

  defp start_room_check_count do 
    Agent.start(fn() -> 0 end, [name: CheckedRoomCount])
  end

end
