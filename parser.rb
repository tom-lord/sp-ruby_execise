#!/usr/bin/env ruby
require_relative 'log_parser'
require_relative 'total_display_formatter'
require_relative 'unique_display_formatter'

parser = LogParser.new(ARGF)

puts "Total page views:"
puts parser.display_page_views(TotalDisplayFormatter.new)
puts
puts "Unique page views:"
puts parser.display_page_views(UniqueDisplayFormatter.new)
