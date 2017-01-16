#!/usr/bin/env ruby
require_relative 'log_parser'

parser = LogParser.new(ARGF)

puts "Total page views:"
puts parser.display_page_views(metric: ->(views){ views.count }, order: :asc, description: 'visits')
puts
puts "Unique page views:"
puts parser.display_page_views(metric: ->(views){ views.uniq.count }, order: :asc, description: 'unique views')
