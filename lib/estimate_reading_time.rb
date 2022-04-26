READING_SPEED = 200.0

def estimate_reading_time(text)
  fail 'Invalid text.' if text == nil
  (text.split.length / READING_SPEED).ceil
end