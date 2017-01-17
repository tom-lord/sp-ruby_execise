class BaseDisplayFormatter
  DISPLAY_ORDERS = {asc: 1, desc: -1}

  def initialize(order: :desc)
    @order = order
  end

  def sort_metric(views)
    metric(views) * order_converter(@order)
  end

  def order_converter(order)
    DISPLAY_ORDERS.fetch(order)
  end
end
