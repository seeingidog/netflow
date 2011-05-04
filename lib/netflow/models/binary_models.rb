class Header < BinData::Record
  endian :big
  uint16 :version
  uint16 :flow_records
  uint32 :uptime
  uint32 :unix_sec
  uint32 :flow_seq_num
  uint32 :source_id
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
  header :header
  template_flowset :template_flowset

  uint16 :template_id
  uint16 :data_flowset_length
  #string :data, :read_length  =>  lambda { data_flowset_length - 32 }
end

class Netflow5PDU < BinData::Record
  endian :big
  header :header
end

class DataFlowset < BinData::Record
  endian :big
  
  uint16 :template_id
  uint16 :data_flowset_length
end

class Version5DataFlowset < BinData::Record
  endian :big

end