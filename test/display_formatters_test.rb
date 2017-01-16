require 'minitest/autorun'
require 'display_order_converter'
require 'total_display_formatter'
require 'unique_display_formatter'

describe 'TotalDisplayFormatter' do
  it 'defines a metric for counting total views' do
    assert_equal(
      3,
      TotalDisplayFormatter.new.metric(%w(a a b))
    )
  end
end

describe 'UniqueDisplayFormatter' do
  it 'defines a metric for counting unique views' do
    assert_equal(
      2,
      UniqueDisplayFormatter.new.metric(%w(a a b))
    )
  end
end

