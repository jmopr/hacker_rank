# Draws a staircase with a specific height.
def hashtag_staircase
  height = gets.strip.to_i
  row = height - 1
  index = 1
  (1..height).each do
    print " " * row
    row -= 1
    puts "#" * index
    index += 1
  end
end

hashtag_staircase
