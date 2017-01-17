#!/usr/bin/env ruby
Dir["#{__dir__}/lib/*"].each {|file| require file }

parser = LogParser.new(ARGF)

puts "Total page views:"
puts parser.display_page_views(TotalDisplayFormatter.new)
puts
puts "Unique page views:"
puts parser.display_page_views(UniqueDisplayFormatter.new)


# Technically this is not part of the solution,
# so I've left it commented out... Feel free to uncomment.
#puts
#puts "Random page views:"
#puts parser.display_page_views(RandomDisplayFormatter.new)
