class HighSchoolsController < ApplicationController
  def index
    @title = "NYC High School SAT Scores"
    @highschools = Unirest.get('https://data.cityofnewyork.us/resource/734v-jeq5.json').body.sort_by { |highschool| highschool["school_name"]}
    render 'index.html.erb'
  end
end
