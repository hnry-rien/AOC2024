# data = File.read("day3b.test.input")
data = File.read("day3.input")

def mul(str)
  m = str.match(/mul\((\d+),(\d+)\)/)
  m[1].to_i * m[2].to_i
end

re = /mul\(\d+,\d+\)|do\(\)|don\'t\(\)/

sum = 0
enabled = true
data.scan(re).each do |m|
  pp "-- #{m}"
  case m
  when "don't()"
    enabled = false
  when "do()"
    enabled = true
  else
    sum += mul(m) if enabled
  end
end

pp "sum: #{sum}"