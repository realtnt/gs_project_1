class DiaryEntry
  def initialize(title, contents)
    @title = title.is_a?(String) ? title : "new title"
    @contents = contents.is_a?(String) ? contents : "new contents"
    @last_word_read = 0
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

  # Returns a string with a chunk of the contents that the user could read
  # in the given number of minutes.
  # If called again, `reading_chunk` should return the next chunk, skipping
  # what has already been read, until the contents is fully read.
  # The next call after that it should restart from the beginning.
  def read_chunk(wpm, minutes) 
    contents_arr = @contents.split
    words = wpm * minutes
    previous_last_word = @last_word_read
    @last_word_read += words
    output_string = contents_arr[previous_last_word...@last_word_read].join(' ')
    @last_word_read = 0 if @last_word_read >= contents_arr.length

    return output_string
  end
end
