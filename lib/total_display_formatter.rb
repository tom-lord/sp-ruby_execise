class TotalDisplayFormatter
  include ArrangedOrder

  def initialize(order: :desc)
    @order = order
  end

  def metric(views)
    views.count
  end

  def description
    'visits'
  end
end
