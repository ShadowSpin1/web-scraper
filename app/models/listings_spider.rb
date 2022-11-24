class ListingsSpider < Kimurai::Base
  @name = 'listings_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//div[@class='listing-card__details']").each do |listing|
      item = {}

      item[:address] = listing.css('h2.listing-card__title')&.text&.squish
      #Once this works, it would be good to refactor the fields in bottom to integers.
      item[:rent] = listing.css('p.listing-card__price')&.text&.squish
      item[:sqft] = listing.css('ul.listing-card__title li')[2]&.text&.squish.gsub('Bed', '')
      item[:bedrooms] = listing.css('ul.listing-card__title li')[0]&.text&.squish.gsub('Bath', '')
      item[:bathrooms] = listing.css('ul.listing-card__title li')[1]&.text&.squish.gsub('FT²', '')

      Listing.where(item).first_or_create
  end
end
