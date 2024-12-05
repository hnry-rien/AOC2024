# data = File.read("day4b.test.input")
data = File.read("day4.input")
lines = data.split("\n")

# split into block of 3 x 3
cols = lines.first.size - 2 # - 2 because we skip left and right col
rows = lines.size - 2 # - 2 because we skip top and bottom row

blocks = []
(1..cols).each do |c|
  (1..rows).each do |r|
    block = []
    [r - 1, r, r + 1].each do |rr|
      row = []
      [c - 1, c, c + 1].each do |cc|
        row << lines[rr][cc]
      end
      block << row.join
    end
    blocks << block.join
  end
end

valid = [/M.M.A.S.S/, /S.M.A.S.M/, /S.S.A.M.M/, /M.S.A.M.S/]
p blocks.select { |x| valid.any?{|re| re.match?(x)} }.count