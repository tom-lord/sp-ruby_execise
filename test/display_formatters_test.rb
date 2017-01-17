require 'test_helper'

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

