class RandomDisplayFormatter
  def metric(views)
    views.sample
  end

  def sort_metric(views)
    rand
  end

  def description
    'is a random IP that visited here'
  end
end
