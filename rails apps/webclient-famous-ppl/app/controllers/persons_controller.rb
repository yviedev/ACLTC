class PersonsController < ApplicationController
  def index
    @title = "All Famous People"
    @persons = Person.all

    render 'index.html.erb'
  end

  def show
    @title = "Famous Person"
    @person = Person.find(params[:id])
    render 'show.html.erb'
  end

  def new
    @title = "New Famous Person"
    render 'new.html.erb'
  end

  def create
    @title = "Famous Person Created"
    @person = Person.create(
      name: params[:form_name],
      genre: params[:form_genre],
      age: params[:form_age],
      years_of_acting: params[:form_years_of_acting],
      number_of_films: params[:number_of_films],
      highest_grossing_salary: params[:form_highest_grossing_salary]
    )

    redirect_to "/famouspeople/#{@person.id}"
  end

  def edit
    @title = "Edit Famous Person"
    @person = Person.find(params[:id])

    render 'edit.html.erb'
  end

  def update
    @title = "Update Famous Person"
    @person = Person.find(params[:id])
    @person.update(
      name: params[:form_name],
      genre: params[:form_genre],
      age: params[:form_age],
      years_of_acting: params[:form_years_of_acting],
      number_of_films: params[:number_of_films],
      highest_grossing_salary: params[:form_highest_grossing_salary]
    )

    redirect_to "/famouspeople/#{@person.id}"
  end

  def destroy
    @title = "Delete Famous Person"
    person = Person.find(params[:id])
    person.destroy

    redirect_to "/famouspeople"
  end

end
