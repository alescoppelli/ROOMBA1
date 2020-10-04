defmodule Roomba1 do
  use GenServer 

  defstruct [state: "ASLEEP", movement: "FORWARD", command_result: :ok]

  
  def init(%Roomba1{} \\ %{}) do
    {:ok, %Roomba1{}}
  end

  def start_link(%Roomba1{}) do
     GenServer.start_link(__MODULE__, %Roomba1{} )   
  end

  def handle_cast(pid,%Roomba1{} ) do
  
 
    case %Roomba1{}  do
      %Roomba1{movement: "FORWARD"} -> {:ok,Map.put(%Roomba1{}, :command_result, :done)}


    end


    
  end


  def go_forward(%Roomba1{} = roomba)
        when Map.get(roomba,state)  == "FORWARD"
  do


  end



end
