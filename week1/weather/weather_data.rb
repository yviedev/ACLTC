#Extract data from .dat file/API
input = File.open('weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map{|l| l.split.map(&:to_f) }

$spread = []
array.each do |data|
  #Push spread and day to spread array
  $spread << [(data[1].to_f - data[2].to_f), data[0].to_i]
end
#p $spread
result = $spread.select {|n| n[0] > 0}
p "The day number is #{result.min[1]} and smallest spread is #{result.min[0]}." 



