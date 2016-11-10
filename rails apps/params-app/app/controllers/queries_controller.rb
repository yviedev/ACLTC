class QueriesController < ApplicationController
  def show_message
        p '*' * 30
        @message = params["message"]
        @message2 = params["last"]
        p '*' * 30
        render 'new_message.html.erb'
  end
  def insult
    @message = params["message"]
    render 'rude.html.erb'
  end

end
