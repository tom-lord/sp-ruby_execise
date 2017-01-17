require 'minitest/autorun'
require 'base_display_formatter'
require 'total_display_formatter'
require 'unique_display_formatter'
require 'random_display_formatter'

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

describe 'RandomDisplayFormatter' do
  it 'defines a metric by choosing an array element' do
    assert_includes(
      %(a b),
      RandomDisplayFormatter.new.metric(%w(a a b))
    )
  end
end
