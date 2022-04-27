def check_todo(text)
  fail 'Invalid string.' if text == nil
  text.include?('#TODO')
end