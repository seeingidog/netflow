class Netflow
  def self.parse_packet(data)
    begin
      header = Header.read(data)
      if header.version == 9
        flowset = Netflow9PDU.read(data)
      elsif header.version == 5
        flowset = Netflow5PDU.read(data)
      else
        raise "Unsupported Netflow version"
      end
    rescue
      raise "Error reading header."
    end
  end
end
