def make_snippet(str)
  words = str.split
  words.length > 5 ? "#{words[0, 5].join(' ')}..." : str
end
