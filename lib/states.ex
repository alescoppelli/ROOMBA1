defmodule States do
@docmodule """
 This module provide a FSM ( use Machinery ) and remember
 current state by an Agent 


"""


use Machinery,
      
   states: [ "off", "passive", "safe", "full"],
   transitions: %{
           "off"     => "passive",
           "passive" => ["off","safe","full"],
           "safe"    => "passive",
           "full"    => "passive",
        }

  use Agent
  

  def start(state) do
   Agent.start_link(fn -> state end)  
  end

  def get(pid,key) do
    Agent.get(pid,&Keyword.get(&1,key))
  end

  def update(pid,key,value) do
   Agent.update(pid, &Keyword.put(&1,key,value))
  end


 def transition_to(struct, state_machine, next_state) do
  Machinery.transition_to(struct,state_machine,next_state)
  #{:ok, %{state: "passive"} }
 end





end
