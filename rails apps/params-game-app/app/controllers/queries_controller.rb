class QueriesController < ApplicationController

  def name
    @title = "What's Your Name"
    p '*' * 30
    @name = params["name"]
    p '*' * 30
    render 'name.html.erb'
  end

  def guess_a_number
    @title = "Guess a number"
    @number = 30
    @result = params["wildcard"]

    if @result.to_i == @number
      @result = "You guessed right! The number is #{@number}"
    elsif @result.to_i < @number
      @result = "Your number is too low. Guess again."
    elsif @result.to_i > @number
      @result = "Your number is too high. Guess again."
    end
        
    render 'guess_a_number.html.erb'
  end

  def get_count
    @title = "Page Count"
    @page_count = params["count"].to_i
    @page_count += 1
  end

  def wild
    @title = "Wildcard"
    @name = params["idaho"]
    render 'wild.html.erb'
  end

  def show_the_message
    @title = "Show the message"
    @message = params["message"]
    render 'show_the_message.html.erb'
  end

  def new_message
    @title = "New Form"
    render 'new_message.html.erb'
  end

  def guess_a_number_form
    @title = "Guess a Number"
    render 'guess_a_number_form.html.erb'
  end

  def guess_number_result
    @title = "Guess Number Result"
    @number = 30
    @result = params["message"]

    if @result.to_i == @number
      @result = "You guessed right! The number is #{@number}"
    elsif @result.to_i < @number
      @result = "Your number is too low. Guess again."
    elsif @result.to_i > @number
      @result = "Your number is too high. Guess again."
    end
    render 'guess_number_result.html.erb'
    
  end

end
