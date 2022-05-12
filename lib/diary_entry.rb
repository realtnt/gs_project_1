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
