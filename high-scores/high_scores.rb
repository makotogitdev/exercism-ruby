class HighScores
  attr_reader :scores

  def initialize(values)
    @scores = values
  end

  def latest
    scores.last
  end

  def personal_best
    sorted_scores.last
  end

  def personal_top_three
    sorted_scores.reverse.slice(0..2)
  end

  def latest_is_personal_best?
    latest == sorted_scores[0]
  end

  private

  def sorted_scores
    scores.sort
  end
end