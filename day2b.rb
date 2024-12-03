# data = File.read("day2.test.input").split("\n")
data = File.read("day2.input").split("\n")

def safe?(levels)
  rlevels = levels.reverse
  return false unless levels == levels.sort || rlevels == rlevels.sort

  levels.each_cons(2).to_a.all? do |cons|
    x, y = cons
    d = (x - y).abs 
    d >= 1 && d <= 3
  end
end

good = 0
data.each do |line|
  levels = line.split(" ").map(&:to_i)

  if safe?(levels)
    good += 1
    next
  end

  levels.count.times do |i|
    dupe = levels.dup
    dupe.delete_at(i)
    if safe?(dupe)
      good += 1
      break
    end
  end
end

pp good
