module DisplayOrderConverter
  DISPLAY_ORDERS = {asc: 1, desc: -1}

  def order_converter(order)
    DISPLAY_ORDERS.fetch(order)
  end
end
