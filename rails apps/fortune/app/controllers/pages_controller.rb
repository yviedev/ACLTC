class PagesController < ApplicationController

  @@count = 0

  def new_fortune
    @title = "Fortune"
    arry = ["good", "wish", "health", "happy", "love", "lots of money", "forever", "puppies", "sunshine"]
    @fortune = arry.sample(4).join(" ").capitalize
    render 'fortune.erb' # remember to put quotes around html file!
    # filename should end in ".erb", but you don't have to use .html
  end

  def lottery
    @title = "Lottery"
    @arry = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    @lottery = @arry.sample(6)
    render 'lottery.html.erb'
  end

  def info_views
    @title = "Views"
    @@count += 1
    @new_count = @@count
    render 'views.html.erb'
  end

  def lyrics
    @title = "Lyrics"
    render 'lyrics.html.erb'
  end

end