class Song
  
  def initialize(title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def title
    return @title
  end
  
  def artist  
    return @artist
  end
  
  def duration
    return @duration
  end
  
  def lyrics
    return @lyrics
  end
  
  def play_song
    `say #{@lyrics}`
    lyrics
  end
  
  def info
    return "You are listening to #{title} by #{artist} which runs for #{friendly_duration}: #{lyrics}"
  end
  
  def friendly_duration
    return "#{@duration / 60} minutes and #{@duration % 60} seconds"
    #"2 minutes, 30 seconds."
  end
  
end