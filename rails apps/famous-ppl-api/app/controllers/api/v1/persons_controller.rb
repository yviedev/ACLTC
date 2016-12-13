class Api::V1::PersonsController < ApplicationController
  def index
    @title = "All Famous People"
    @people = Person.all
    render 'index.json.jbuilder'
    # render 'index.html.erb'
  end

  def show
    @title = "Famous Person"
    @person = Person.find(params[:id])
    render 'show.json.jbuilder'
  end

  def new
    #no form because dev will add via Unirest or Postman
  end

  def create
    @person = Person.create!(
    name: params[:name],
    genre: params[:genre],
    age: params[:age],
    years_of_acting: params[:years_of_acting],
    number_of_films: params[:number_of_films],
    highest_grossing_salary: params[:highest_grossing_salary]
    )
    render 'show.json.jbuilder'
  end

  def update
    @person = Person.find(params[:id])

    @person.name = params[:name] || @person.name
    @person.genre = params[:genre] || @person.genre
    @person.age = params[:age] || @person.age
    @person.years_of_acting = params[:years_of_acting] || @person.years_of_acting
    @person.number_of_films = params[:number_of_films] || @person.number_of_films
    @person.highest_grossing_salary =  params[:highest_grossing_salary] || @person.highest_grossing_salary

    @person.save

    render 'show.json.jbuilder'
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    render json: {message: "You just deleted a famous person."}
  end

end
