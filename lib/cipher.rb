def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # bug 1 using ... instead of ..
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # bug 2 (same as above)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]   # bug 3 (it was 65 - chars.ord)
  end
  return plaintext_chars.join
end

puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
