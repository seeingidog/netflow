require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Netflow" do
  it "should start an netflow collector" do
    Netflow.start_collector
  end
end
