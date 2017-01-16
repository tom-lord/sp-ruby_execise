class UniqueDisplayFormatter
  def metric(views)
    views.uniq.count
  end

  def order
    :asc
  end

  def description
    'unique views'
  end
end
