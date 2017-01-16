class LogParser
  attr_reader :page_views
  DISPLAY_ORDERS = {asc: -1, desc: 1}
  def initialize(log_file)
    @page_views = Hash.new { |hash, key| hash[key] = [] }
    parse(log_file)
  end

  def display_page_views(metric:, order:, description:)
    sorted_pages(metric, DISPLAY_ORDERS[order]).map do |page, views|
      sprintf "%12s  %3s #{description}", page, metric.call(views)
    end.join("\n")
  end

  private

  def parse(log_file)
    log_file.each_line do |line|
      page, ip = line.split
      page_views[page] << ip
    end
  end

  def sorted_pages(metric, order)
    page_views.sort_by { |page, views| metric.call(views) * order }
  end
end

