defmodule SerComm do

  def start(port) do
    {:ok, pid} = Circuits.UART.start_link
    Circuits.UART.open(pid,port,speed: 115200, active: false)
    {:ok, pid}
  end

  def write(pid, data) do
     Circuits.UART.write(pid,data)
     Circuits.UART.drain(pid)
  end

  def read(pid) do
    Circuits.UART.read(pid)
  end

  def close(pid) do
     Circuits.UART.close(pid)
     Circuits.UART.stop(pid)
  end 

end