class TotalDisplayFormatter < BaseDisplayFormatter
  def metric(views)
    views.count
  end

  def description
    'visits'
  end
end
