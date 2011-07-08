#!/usr/bin/env ruby

$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '..','lib'))

require 'netflow/collector'

NetflowCollector.start_collector
