defmodule DoTransition do

 def start do
   {:ok}
 end

 @spec string2byte(String.t) :: {:ok,<<>> } | {:error, String.t}
 def string2byte(cmd) do

  case cmd do
   "START"   -> {:ok,<<128>>}
   "CONTROL" -> {:ok,<<130>>}
   "SAFE"    -> {:ok,<<131>>}
   "FULL"    -> {:ok,<<132>>}
   "POWER"   -> {:ok,<<133>>}
   _         -> {:error,"Command not found"}
  end

 end

end
