class LogParser
  attr_reader :page_views
  def initialize(log_file)
    @page_views = Hash.new { |hash, key| hash[key] = [] }
    parse(log_file)
  end

  def total_page_views
    sorted_total.map do |page, views|
      sprintf '%12s  %3s visits', page, views.count
    end.join("\n")
  end

  def unique_page_views
    sorted_unique.map do |page, views|
      sprintf '%12s  %3s unique views', page, views.uniq.count
    end.join("\n")
  end

  private

  def parse(log_file)
    log_file.each_line do |line|
      page, ip = line.split
      page_views[page] << ip
    end
  end

  def sorted_total
    page_views.sort_by { |page, views| -views.count }
  end

  def sorted_unique
    page_views.sort_by { |page, views| -views.uniq.count }
  end
end

