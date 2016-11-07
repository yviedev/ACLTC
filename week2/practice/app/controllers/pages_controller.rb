class PagesController < ApplicationController
  def info_about
    render 'information.html'
  end

  def contact
    render 'contact.html'
  end

  def dev_services
    # Write tons of ruby code here
    x = 5
    y = 5
    @sum = x + y
    @title = "Services"
    render 'services.html.erb'
  end

  def blog
    render 'blog'
  end

end
