require 'bindata'
require 'eventmachine'
dir = File.expand_path(File.join(File.dirname(__FILE__),  'netflow'))
['models/binary_models','parsers/parsers','storage/storage', 'collector'].each do |req|
  require File.join(dir, req)
end
