class QuotesController < ApplicationController

  def index
    
    # x = {"success"=>{"total"=>1}, "contents"=>{"quotes"=>[{"quote"=>"Don't be afraid of losing, be afraid of playing a game and not learning something.", "length"=>"82", "author"=>"Dan Heisman", "tags"=>["chess", "game", "inspire", "learning", "losing", "winning"], "category"=>"inspire", "date"=>"2016-08-28", "title"=>"Inspiring Quote of the day", "background"=>"https://theysaidso.com/img/bgs/man_on_the_mountain.jpg", "id"=>"QjquACBvuFGtDYv79nbG_QeF"}]}}
    # @quote = x["contents"]["quotes"][0]["quote"]
    # @author = x["contents"]["quotes"][0]["author"]

    quote_json = Quote.get_quote
    @quote = quote_json["contents"]["quotes"][0]["quote"]
    @author = quote_json["contents"]["quotes"][0]["author"]
  end

end
