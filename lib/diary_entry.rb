class DiaryEntry
  def initialize(title, contents)
    @title = title.is_a?(String) ? title : "new title"
    @contents = contents.is_a?(String) ? contents : "new contents"
  end

  def get_title
    @title
  end

  def get_contents
    @contents
  end

  def count_words
    @contents.split.length
  end

  def calc_reading_time(wpm)
    (count_words / wpm.to_f).ceil
  end

  def read_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    
    # calculate number of words = wpm * minutes
    # last_word_read += words
    # 
    return @contents
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
