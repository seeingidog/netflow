require File.expand_path(File.join(File.dirname(__FILE__), '..','lib','netflow'))

puts "Help" unless ARGV[0] != nil

ARGV.each do |arg|
  puts "Arguement #{arg}"
end

Netflow.start_collector
