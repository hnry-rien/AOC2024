# data = File.read("day4.test.input")
data = File.read("day4.input")
lines = data.split("\n")

# horizontals
hs = lines
# verticals
vs = lines.map { |l| l.split("") }.transpose.map(&:join)

rows = lines.size - 1
cols = lines.first.size - 1

# top left bottom right diagonals
def tl_br(lines, rows, cols)
  tl_br = []
  (0..rows).each do |r|
    str = []
    (0..r).each do |c|
      str << lines[r-c][c]
    end
    tl_br << str.join
  end
  tl_br
end

tl_br1 = tl_br(lines, rows, cols)
tl_br2 = tl_br(lines.reverse.map(&:reverse), rows, cols)
tl_br2.pop # last one is a double from tl_br1

# top right bottom left diagonals

def tr_bl(lines, rows, cols)
  tr_bl = []
  (0..rows).each do |r|
    str = []
    (0..r).each do |c|
      str << lines[r-c][c]
    end
    tr_bl << str.join.reverse
  end
  tr_bl
end

tr_bl1 = tr_bl(lines.map(&:reverse), rows, cols)
tr_bl2 = tr_bl(lines.map(&:reverse).reverse.map(&:reverse), rows, cols)
tr_bl2.pop # last one is a double from tr_bl2

# --------

c = (hs + vs + tl_br1 + tl_br2 + tr_bl1 + tr_bl2).sum do |i|
  i.scan(/XMAS/).count + i.reverse.scan(/XMAS/).count
end

p c