class TotalDisplayFormatter
  include DisplayOrderConverter
  def initialize(order: :asc)
    @order = order
  end

  def metric(views)
    views.count
  end

  def sort_metric(views)
    metric(views) * order_converter(@order)
  end

  def description
    'visits'
  end
end
