class GrammarStats
  def initialize
    @total_checks = 0.0
    @passed_checks = 0.0
  end

  def check(sentence)
    fail 'Argument is not of type string' if sentence == nil
    @total_checks += 1
    if sentence != '' && 
      ('A'..'Z').to_a.include?(sentence[0]) && 
      ['.', '?', '!'].include?(sentence[-1])
      @passed_checks += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    return 'No checks done yet' if @total_checks == 0
    (@passed_checks / @total_checks * 100).to_i
  end
end
