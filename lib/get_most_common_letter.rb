def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1 unless char == ' '  # do not add spaces to the hash
  end
  p counter.to_a.sort_by { |k, v| v}
  counter.to_a.sort_by { |k, v| v }.reverse[0][0]  # reverse the sort
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"