defmodule Roomba1Test do
  use ExUnit.Case
  doctest Roomba1

 #test "Fail" do
 # assert true == false
 #end 

 test "Test function START" do
    {:ok,pid} =  Roomba1.start
 end



end
