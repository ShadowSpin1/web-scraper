require 'kimurai'

class ListingsSpider < Kimurai::Base
  @name = "ListingsSpider"
  @engine = :mechanize
  @start_urls = []
  @config = {}

  def parse(response, url:, data: {})
  end
end

ListingsSpider.crawl!