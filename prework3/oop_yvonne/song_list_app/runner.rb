require_relative "list"
require_relative "song"

# Create list
list = List.new

# Add 2 new songs
list.add_song(Song.new("ABC", "unknown", 5, "ABCDEF"))
list.add_song(Song.new("123", "unknown", 10, "1234567890"))

# Play list
list.play_list

# Shuffle list
list.shuffle

# Return duration of playlist
puts list.duration_list
