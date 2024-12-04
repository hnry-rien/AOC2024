# data = File.read("day3.test.input")
# data = File.read("day3.input")

# def mul(str)
#   m = str.match(/mul\((\d+),(\d+)\)/)
#   m[1].to_i * m[2].to_i
# end

# re = /mul\(\d+,\d+\)/

# sum = 0
# data.scan(re).each do |m|
#   pp "-- #{m}"
#   sum += mul(m)
# end

# pp "sum: #{sum}"

# p File.read(ARGV[0]).scan(/mul\(\d+,\d+\)/).sum{_1.match(/mul\((\d+),(\d+)\)/);$1.to_i*$2.to_i}
# p File.read(ARGV[0]).scan(/mul\((\d+),(\d+)\)/).sum{_1.map(&:to_i).inject(&:*)}
# p$<.read.scan(/mul\((\d+),(\d+)\)/).sum{_1.map(&:to_i).inject(&:*)}
p$<.read.scan(/mul\((\d+),(\d+)\)/).sum{eval(_1*?*)}

# `p` does not need a space
# `$<.read` reads from a file
# `_1` is first arg for `sum`
# `*?*` joins an array w/ the `*` char
# `eval` evaluates the whole string
