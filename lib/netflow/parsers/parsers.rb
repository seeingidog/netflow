class Netflow
  def self.parse_packet(data)
    begin
      header = Header.read(data)
      if header.version == 9
        puts header.inspect
        #template = parse_template(data)
      elsif header.version == 5
        puts header.inspect
        #read data
        
      else
        raise "Unsupported Netflow version"
      end
    rescue
      raise "Error reading header."
    end
  end
  
  def parse_template(data)
    1
  end
  def parse_data_flowset
    1
  end
end
