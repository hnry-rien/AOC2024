# data = File.read("day2.test.input").split("\n")
data = File.read("day2.input").split("\n")

good = 0
data.each do |line|
  levels = line.split(" ").map(&:to_i)
  rlevels = levels.reverse

  next unless levels == levels.sort || rlevels == rlevels.sort
  next unless levels.each_cons(2).to_a.all? do |cons|
    x, y = cons
    d = (x - y).abs 
    d >= 1 && d <= 3
  end

  good += 1
end

pp good