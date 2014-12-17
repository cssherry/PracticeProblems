class Integer
  def to_gigasecond
    self * (10**9)
  end

  def second
    self
  end

  def minute
    self * 60
  end

  def hour
    self * 60 * 60
  end

  def day
    self * 60 * 60 * 24
  end
end
