#!/usr/bin/env ruby
require_relative 'log_parser'

parser = LogParser.new(ARGF)

puts "Total page views:"
puts parser.total_page_views
puts
puts "Unique page views:"
puts parser.unique_page_views
