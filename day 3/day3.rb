# data = File.read("day3.test.input")
data = File.read("day3.input")

def mul(str)
  m = str.match(/mul\((\d+),(\d+)\)/)
  m[1].to_i * m[2].to_i
end

re = /mul\(\d+,\d+\)/

sum = 0
data.scan(re).each do |m|
  pp "-- #{m}"
  sum += mul(m)
end

pp "sum: #{sum}"