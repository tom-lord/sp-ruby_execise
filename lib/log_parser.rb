class LogParser
  attr_reader :page_views
  def initialize(log_file)
    @page_views = Hash.new { |hash, key| hash[key] = [] }
    parse(log_file)
  end

  def display_page_views(display_formatter = TotalDisplayFormatter.new)
    sorted_pages(display_formatter).map do |page, views|
      sprintf(
        "%12s  %3s #{display_formatter.description}",
        page,
        display_formatter.metric(views)
      )
    end.join("\n")
  end

  private

  def parse(log_file)
    log_file.each_line do |line|
      page, ip = line.split
      page_views[page] << ip
    end
  end

  def sorted_pages(display_formatter)
    page_views.sort_by do |page, views|
      display_formatter.sort_metric(views)
    end
  end
end

