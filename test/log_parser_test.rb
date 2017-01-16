require 'minitest/autorun'
require 'log_parser'
require 'display_order_converter'
require 'total_display_formatter'
require 'unique_display_formatter'

def test_log_file
  file = Tempfile.new
  file.write <<~FILE
    page1 1.2.3.4
    page2 5.6.7.8
    page2 5.6.7.8
  FILE
  file.rewind
  file
end

describe 'LogParser' do
  it 'defines a mapping of page viewed to IPs' do
    log_parser = LogParser.new(test_log_file)
    assert_equal(
      {'page1' => ['1.2.3.4'], 'page2' => ['5.6.7.8', '5.6.7.8']},
      log_parser.page_views
    )
  end

  it 'lists page views given a "total" metric and order' do
    total_views = LogParser.new(test_log_file).display_page_views(
      TotalDisplayFormatter.new
    )
    assert_match(
      /page2\s+2 visits/,
      total_views.lines[0]
    )
    assert_match(
      /page1\s+1 visits/,
      total_views.lines[1]
    )
  end

  it 'lists page views given a "unique" metric and order' do
    unique_views = LogParser.new(test_log_file).display_page_views(
      UniqueDisplayFormatter.new
    )
    assert_match(
      /page1\s+1 unique views/,
      unique_views.lines[0]
    )
    assert_match(
      /page2\s+1 unique views/,
      unique_views.lines[1]
    )
  end
end

