defmodule StatesTest do
  use ExUnit.Case
    


  #test "fail test" do
  #  assert true  == false
  #end

  test "transation from state_A to state_B" do
     assert {:ok, %{state: "passive"} } == States.transition_to(%{} , States , "passive" )
     assert {:ok, %{state: "safe"} } == States.transition_to(%{:state => "passive"} , States , "safe" )
     assert {:ok, %{state: "passive"} } == States.transition_to(%{} , States , "passive" )
     assert {:ok, %{state: "full"} } == States.transition_to(%{:state => "passive"} , States , "full" )

  end 
  


end