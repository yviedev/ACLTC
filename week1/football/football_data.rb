#Extract data from .dat file/API
input = File.open('football.dat', File::RDONLY){|f| f.read }
array = input.lines.map{|l| l.split.map(&:to_s) }

#p array
$spread = []
array.each do |data|
  #Push spread and day to spread array
  $spread << [(data[6].to_i - data[8].to_i), data[1].to_s]
end
#p $spread
result = $spread.select {|n| n[0] > 0}
p "The #{result.min[1]} team has the smallest difference of #{result.min[0]} between 'for' and 'against' goals." 



