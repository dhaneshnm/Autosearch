require "net/http"
require "uri"
class ResultsController < ApplicationController
  def index
  	years = params["car-years"]
  	make = params["car-makes"]
  	model = params["car-models"]
  	trim = params["car-model-trims"]
    request_string = "http://api.lemonfree.com/v2/listings/?year_from="+years+"&year_to="+years+"&make="+make+"&model="+model+"&key=b7e9f727a38d9b874d9fb8efa73aef0c&format=json"
    request_string = URI.encode(request_string)
    uri = URI.parse(request_string)
    response = Net::HTTP.get_response(uri)
    @listings = JSON.parse(response.body)["response"]["result"]["listings"]
  end
end
