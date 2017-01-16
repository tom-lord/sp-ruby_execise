class UniqueDisplayFormatter
  include DisplayOrderConverter
  def metric(views)
    views.uniq.count
  end

  def sort_metric(views)
    metric(views) * order_converter(order)
  end

  def order
    :asc
  end

  def description
    'unique views'
  end
end
