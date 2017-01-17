class UniqueDisplayFormatter
  include ArrangedOrder

  def initialize(order: :desc)
    @order = order
  end

  def metric(views)
    views.uniq.count
  end

  def description
    'unique views'
  end
end
