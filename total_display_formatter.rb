require_relative 'display_order_converter'
class TotalDisplayFormatter
  include DisplayOrderConverter
  def metric(views)
    views.count
  end

  def sort_metric(views)
    metric(views) * order_converter(order)
  end

  def order
    :asc
  end

  def description
    'visits'
  end
end
