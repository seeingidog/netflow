class Header < BinData::Record
  endian :big
  uint16 :version
end

class Netflow5PDU < BinData::Record
  endian :big
  uint16 :version
  uint16 :flow_records
  uint32 :uptime
  uint32 :unix_sec
  uint32 :unix_nsec
  uint32 :flow_seq_num
  uint8  :engine_type
  uint8  :engine_id
  bit1   :sampling_type
  bit14  :sampling_interval
  array  :records, :initial_length => :flow_records do
    uint32 :srcaddr
    uint32 :dstaddr
    uint32 :nexthop
    uint16 :iface_in
    uint16 :iface_out
    uint32 :packets
    uint32 :octets
    uint32 :first_uptime
    uint32 :last_uptime
    uint16 :srcport
    uint16 :dstport
    uint8  :pad1
    uint8  :tcpflags
    uint8  :proto
    uint8  :tos
    uint16 :srcas
    uint16 :dstas
    uint8  :srcmask
    uint8  :dstmask
    uint16 :pad2
  end
end

class TemplateFlowset < BinData::Record
  endian :big
  uint16 :flowset_id
  uint16 :flowset_length
  uint16 :flowset_template_id
  uint16 :flowset_field_count
  string :flowset, :read_length => :flowset_length
end

class Netflow9PDU < BinData::Record
  endian :big
  uint16 :version
  uint16 :flow_records
  uint32 :uptime
  uint32 :unix_sec
  uint32 :flow_seq_num
  uint32 :source_id
  template_flowset :template_flowset

  uint16 :template_id
  uint16 :data_flowset_length
  #string :data, :read_length  =>  lambda { data_flowset_length - 32 }
end

class DataFlowset < BinData::Record
  endian :big

  uint16 :template_id
  uint16 :data_flowset_length
end

