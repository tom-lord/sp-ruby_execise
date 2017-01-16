class TotalDisplayFormatter
  DISPLAY_ORDERS = {asc: -1, desc: 1}
  def metric(views)
    views.count
  end

  def sort_metric(views)
    metric(views) * DISPLAY_ORDERS[order]
  end

  def order
    :asc
  end

  def description
    'visits'
  end
end
