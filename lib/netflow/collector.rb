class NetflowCollector

  module Collector
    def post_init
      puts "Server listening."
    end
    def receive_data(data)
      puts "Datagram recieved."
      if data != nil
        begin
          Netflow.parse_packet(data)
        rescue
          puts "Error parsing packet"
        end
      end
    end
  end

  def self.start_collector(bind_ip = '0.0.0.0', bind_port = 2055)
    EventMachine::run do
      EventMachine::open_datagram_socket(bind_ip, bind_port, Collector)
    end
  end

end
