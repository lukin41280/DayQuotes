class Quote < ApplicationRecord

  def self.get_quote
      quote_api = "http://quotes.rest/qod.json?category=inspire"
      uri = URI(quote_api)
      net = Net::HTTP.get_response(uri)
      json = JSON.parse(net.body)
  end

end
