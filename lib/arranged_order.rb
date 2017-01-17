module ArrangedOrder
  DISPLAY_ORDERS = {asc: 1, desc: -1}

  def sort_metric(views)
    metric(views) * order_converter(@order)
  end

  private

  def order_converter(order)
    DISPLAY_ORDERS.fetch(order)
  end

end
