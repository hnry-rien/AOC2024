# data = File.read("day1.test.input").split("\n")
data = File.read("day1.input").split("\n")
data = data.map{ |l| l.split("   ") }

first = data.map(&:first).map(&:to_i).sort
second = data.map(&:last).map(&:to_i).sort

distances = first.map.with_index do |f, i|
  s = second[i]
  distance = (f - s).abs
end

pp distances.sum