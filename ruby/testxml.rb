
class Memory
  def unit
    raise "NIL"
  end

  def value
    raise "NIL"
  end
end

class MaxMemory < Memory

  def unit
    "kiB"
  end

  def value
    "1024568"
  end

  def to_h
    {unit: unit, value: value}
  end
end

class CurrentMemory < Memory

  def unit
    "kiB"
  end

  def to_h
    {unit: unit, value: value}
  end

end
