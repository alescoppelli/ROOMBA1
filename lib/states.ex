defmodule States do
  use Machinery,
      
   states: [ "off", "passive", "safe", "full"],
   transitions: %{
           "off"     => "passive",
           "passive" => ["off","safe","full"],
           "safe"    => "passive",
           "full"    => "passive",
        }


 def transition_to(struct, state_machine, next_state) do
  Machinery.transition_to(struct,state_machine,next_state)
  #{:ok, %{state: "passive"} }
 end


end
