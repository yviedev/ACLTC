class ForecastsController < ApplicationController
  def index
    @title = "Weather Forecast"
    woeid = params[:woeid]

    @weather = Weather.lookup(12589335, Weather::Units::FAHRENHEIT)


    if Weather.location.nil?
      @weather = Weather.lookup(12589335, Weather::Units::FAHRENHEIT)
      flash[:warning] = "Please enter a valid WOEID."
    else
      @weather = Weather.lookup(woeid, Weather::Units::FAHRENHEIT)
    end

    render 'index.html.erb'
  end
end
