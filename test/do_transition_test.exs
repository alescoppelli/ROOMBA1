defmodule DoTransitionTest do

  use ExUnit.Case

  #test "fail" do
  # assert true == false
  #end

  test "Start module" do
    assert {:ok } == DoTransition.start
  end


  test "Transform 'START' commnad string into byte representation" do
    assert {:ok,<<128>>} == DoTransition.string2byte("START")
  end


  test "Transform 'CONTROL' commnad string into byte representation" do
    assert {:ok,<<130>>} == DoTransition.string2byte("CONTROL")
  end


  test "Transform 'SAFE' commnad string into byte representation" do
    assert {:ok,<<131>>} == DoTransition.string2byte("SAFE")
  end



  test "Transform 'FULL' commnad string into byte representation" do
    assert {:ok,<<132>>} == DoTransition.string2byte("FULL")
  end



  test "Transform 'POWER' commnad string into byte representation" do
    assert {:ok,<<133>>} == DoTransition.string2byte("POWER")
  end


  test "Bad command " do
    assert {:error,"Command not found"} == DoTransition.string2byte("PIPPO")
  end



end