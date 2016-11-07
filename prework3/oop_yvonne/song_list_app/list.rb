class List

  def initialize
    @songs = []
  end

  def songs
    return @songs
  end

  def add_song(song)
    @songs << song
  end

  def play_list
    @songs.each do |song|
      song.play_song
    end
  end
  
  def shuffle
    @songs.shuffle!
    play_list
  end
  
  def duration_list
    sum = 0
    @songs.each do |song|
      sum += song.duration
    end
    return "The duration of this playlist is #{sum} seconds."
  end

end