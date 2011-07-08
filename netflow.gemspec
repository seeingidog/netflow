# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "netflow/version"

Gem::Specification.new do |s|
  s.name        = "netflow"
  s.version     = Netflow::VERSION
  s.authors     = ["seeingidog"]
  s.email       = ["ian@ruby-code.com"]
  s.homepage    = "http://github.com/seeingidog/netflow"
  s.license     = "MIT"
  s.summary     = %q{Ruby Netflow collector based on EventMachine}
  s.description = %q{Listens and parses netflow datagrams sent from network devices. More information on Netflow format: http://tools.ietf.org/html/rfc3954}

  s.rubyforge_project = "netflow"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'bindata'
  s.add_runtime_dependency 'eventmachine'
end
