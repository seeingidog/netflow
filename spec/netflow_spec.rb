require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Netflow collector" do
#  include EM::Spec
#  it "should start an netflow collector" do
#    em do
#      Netflow.start_collector
#      done
#    end
#  end

end

describe "Netflow parser" do
  
  it "should parse a mock netflow version 5 datagram" do
    @mock_datagram5 = ''
  end
  it "should parse a mock netflow version 9 datagram" do
    @mock_datagram6 = ''
  end
  
end
