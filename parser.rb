#!/usr/bin/env ruby
Dir["#{__dir__}/lib/*"].each {|file| require file }

parser = LogParser.new(ARGF)

puts "Total page views:"
puts parser.display_page_views(TotalDisplayFormatter.new)
puts
puts "Unique page views:"
puts parser.display_page_views(UniqueDisplayFormatter.new)
