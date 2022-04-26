def verify_sentence(sentence)
  fail 'Invalid string.' if sentence == nil
  return false if sentence == ''
  return false if sentence[0] == sentence[0].downcase
  return false unless ['.', '?', '!'].include?(sentence[-1])
  true
end