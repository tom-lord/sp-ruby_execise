class UniqueDisplayFormatter < BaseDisplayFormatter
  def metric(views)
    views.uniq.count
  end

  def description
    'unique views'
  end
end
