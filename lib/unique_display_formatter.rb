class UniqueDisplayFormatter
  include DisplayOrderConverter
  def initialize(order: :desc)
    @order = order
  end

  def metric(views)
    views.uniq.count
  end

  def sort_metric(views)
    metric(views) * order_converter(@order)
  end

  def description
    'unique views'
  end
end
