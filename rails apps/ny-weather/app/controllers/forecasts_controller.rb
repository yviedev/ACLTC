class ForecastsController < ApplicationController
  def index
    @title = "5 Day Forecast"
    @city = params[:city] 
    @state = params[:state] 

    @data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{@city}%2C%20#{@state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body
    
    if @data["query"]["results"]
    elsif @data["query"]["results"].nil?
      @data = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22new%20york%2C%20ny%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body
      flash[:warning] = "Please re-enter a valid city and state."
    end
    render 'index.html.erb'
  end
end
