module ApplicationHelper

def get_quote
  quote_api = "curl -v  -i -X GET http://quotes.rest/qod.json?category=inspire"
  uri = URI(quote_api)
  net = Net::HTTP.get_response(uri)
  json = JSON.parse(net.body)
end

end
