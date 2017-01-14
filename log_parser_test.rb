require 'minitest/autorun'
require_relative 'log_parser'

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
    log_parser.page_views.must_equal({'page1' => ['1.2.3.4'], 'page2' => ['5.6.7.8', '5.6.7.8']})
  end

  it 'lists total page views' do
    total_views = LogParser.new(test_log_file).total_page_views
    total_views.lines[0].must_match(/page2\s+2 visits/)
    total_views.lines[1].must_match(/page1\s+1 visits/)
  end

  it 'lists unique page views' do
    unique_views = LogParser.new(test_log_file).unique_page_views
    unique_views.lines[0].must_match(/page1\s+1 unique views/)
    unique_views.lines[1].must_match(/page2\s+1 unique views/)
  end
end

