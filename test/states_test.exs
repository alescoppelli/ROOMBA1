defmodule StatesTest do
  use ExUnit.Case
    


  #test "fail test" do
  #  assert true  == false
  #end

  test "Test initilizzation" do
    {:ok,pid} = States.start([{:current_state,"off"}])
    assert "off" == States.get(pid,:current_state)
  end

  test "Test update " do
     {:ok,pid} = States.start([{:current_state,"off"}])
     States.update(pid,:current_state,"passive")
     assert "passive" == States.get(pid,:current_state)
  end


 test "transation from OFF to PASSIVE" do
     assert {:ok, %{state: "passive"} } == States.transition_to(%{} , States , "passive" )
  end 

  test "transation from PASSIVE to SAFE" do
      assert {:ok, %{state: "safe"} } == States.transition_to(%{:state => "passive"} , States , "safe" )
  end 

  test "transation from state_A to state_B" do
     assert {:ok, %{state: "safe"} } == States.transition_to(%{:state => "passive"} , States , "safe" )
  end 


  test "transation from PASSIVE to FULL" do
      assert {:ok, %{state: "full"} } == States.transition_to(%{:state => "passive"} , States , "full" )

  end 





end