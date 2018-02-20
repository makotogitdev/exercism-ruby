module BookKeeping
  VERSION = 4
end

class Gigasecond
  DURATION = 10**9 # 10k

  def self.from(date_time)
    date_time + DURATION
  end
end