# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv

  attr_accessor :power, :volume, :channel

  def initialize(input)
    @power = input[:power]
    @volume = input[:volume]
    @channel = input[:channel]
  end

end

class Remote

  def initialize(input_tv)
    @tv = input_tv
  end

  def toggle_power
    if @tv.power == false
      @tv.power = true
      "The TV has been turned on."
    else
      @tv.power = false
      "The TV has been turned off."
    end
  end

  def increment_volume
    @tv.volume += 1
    "The volume is #{@tv.volume}."
  end

  def decrement_volume
    @tv.volume -= 1
    "The volume is #{@tv.volume}."
  end

  def set_channel(channel)
    @tv.channel = channel
    "The channel is #{@tv.channel}."
  end

end

p remote = Remote.new(Tv.new(power: true, volume: 5, channel: 2))

p remote.increment_volume
p remote.decrement_volume
p remote.set_channel(10)
p remote.toggle_power
p remote.toggle_power







