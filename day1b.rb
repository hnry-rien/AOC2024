# data = File.read("day1.test.input").split("\n")
data = File.read("day1.input").split("\n")
data = data.map{ |l| l.split("   ") }

first = data.map(&:first).map(&:to_i)
second = data.map(&:last).map(&:to_i)

sims = first.map do |f|
  sim = second.select { |s| s == f }.count
  f * sim
end

pp sims.sum