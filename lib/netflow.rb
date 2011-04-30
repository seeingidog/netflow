require 'socket'
require 'bindata'
require 'eventmachine'
require './binary_models.rb'

def parse_packet(data)
  begin
    a = NetflowPDU.read(data)
    puts a.inspect
  rescue IOError
    puts "Truncated data error"
  end
end

module NetflowCollector
  def post_init
    puts "Server listening."
  end

  def receive_data(data)
    puts "Datagram recieved."
    parse_packet(data)
  end
end

EventMachine::run do
  EventMachine::open_datagram_socket('0.0.0.0', 2055, NetflowCollector)
end
  
