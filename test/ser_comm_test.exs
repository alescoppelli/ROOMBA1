defmodule SerCommTest do

  use ExUnit.Case 
    
  

  test "fail" do
      assert true == false
  end

  #test "Try to open and close the server and the  serial port" do
  #    {:ok, pid} = SerComm.start("ttyUSB0")
  #    assert   :ok == SerComm.close(pid)   
  #end

  #test "Open thee serial port and try to write and read a  long string "  do
  #   {:ok, pid} = SerComm.start("ttyUSB0")
  #   SerComm.write(pid,"0123456789abcdefghilmnopqrstuvzABCDEFGHILMNOPQRSTUVZ")
   #  assert {:ok,"0123456789abcdefghilmnopqrstuvzABCDEFGHILMNOPQRSTUVZ"} == SerComm.read(pid) 
   # SerComm.close(pid)
  #end


end