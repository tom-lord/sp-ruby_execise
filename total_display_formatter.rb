class TotalDisplayFormatter
  def metric(views)
    views.count
  end

  def order
    :asc
  end

  def description
    'visits'
  end
end
