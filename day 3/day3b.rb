# # data = File.read("day3b.test.input")
# data = File.read("day3.input")

# def mul(str)
#   m = str.match(/mul\((\d+),(\d+)\)/)
#   m[1].to_i * m[2].to_i
# end

# re = /mul\(\d+,\d+\)|do\(\)|don\'t\(\)/

# sum = 0
# enabled = true
# data.scan(re).each do |m|
#   pp "-- #{m}"
#   case m
#   when "don't()"
#     enabled = false
#   when "do()"
#     enabled = true
#   else
#     sum += mul(m) if enabled
#   end
# end

# pp "sum: #{sum}"
# pp "-----------"

# a=1;$<.read.scan(/mul\(\d+,\d+\)|do\(\)|don\'t\(\)/).map{_1=="do()"?a=1:(_1=="don't()"?a=0:(a==1?$*<<eval(_1.scan(/\d+/)*?*):0))};p$*.sum
# a=1;$<.read.scan(/mul\(\d+,\d+\)|do\(\)|don\'t\(\)/).map{_1["don"]?a=0:(_1["do"]?a=1:(a==1?$*<<eval(_1.scan(/\d+/)*?*):0))};p$*.sum
a=1;$<.read.scan(/mul\(\d+,\d+\)|do\(\)|don\'t\(\)/).map{_1["don"]?a=0:(_1["do"]?a=1:($*<<eval(_1.scan(/\d+/)*?*)if a==1))};p$*.sum

# `p` does not need a space
# `$<.read` reads from a ARGV[0]
# `_1` is first arg for `map`
# `a` to keep track of `eval`ling or not
# `*?*` joins an array w/ the `*` char
# `eval` evaluates the whole string
# `$*` defaults to an empty array
# "don't()"["don"] returns true