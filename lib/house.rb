class House
  attr_reader :intro
  def initialize(intro = "This is the ")
    @intro = intro
  end
  
  def line(num)
    line = "#{@intro}"
    while (num > 0)
      line_number = LineNumber.for(num)
      line << line_number.phrase
      num = num - 1
    end
    line << ".\n"
  end

  def recite
    1.upto(12).collect { |i| line(i) }.join("\n")
  end

end

class PirateHouse < House
  def initialize(intro = "Thar be the ")
    @intro = intro
  end
end

class RandomHouse < House
  def line(num)
    line = "#{@intro}"
    while (num > 1)
      random_phrase = rand(2..12)
      line_number = LineNumber.for(random_phrase)
      line << line_number.phrase
      num = num - 1
    end
    line_number = LineNumber.for(num)
    line << line_number.phrase
    line << ".\n"
  end
end

class LineNumber
  
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def self.for(num)
    [LineNumber1,
    LineNumber2,
    LineNumber3,
    LineNumber4,
    LineNumber5,
    LineNumber6,
    LineNumber7,
    LineNumber8,
    LineNumber9,
    LineNumber10,
    LineNumber11,
    LineNumber12].find {|candidate| candidate.handles?(num)}.new(num)
  end

  def self.handles?(num)
    True
  end

  def self.registry
    @registry ||= []
  end

  def self.register(candidate)
    registry.prepend(candidate)
  end

end

class LineNumber1 < LineNumber
  def self.handles?(num)
    num == 1
  end

  def phrase
    "house that Jack built"
  end
end

class LineNumber2 < LineNumber
  def self.handles?(num)
    num == 2
  end

  def phrase
    "malt that lay in the "
  end
end

class LineNumber3 < LineNumber
  def self.handles?(num)
    num == 3
  end

  def phrase
    "rat that ate the "
  end
end

class LineNumber4 < LineNumber
  def self.handles?(num)
    num == 4
  end

  def phrase
    "cat that killed the " 
  end
end

class LineNumber5 < LineNumber
  def self.handles?(num)
    num == 5
  end

  def phrase
    "dog that worried the " 
  end
end

class LineNumber6 < LineNumber
  def self.handles?(num)
    num == 6
  end

  def phrase
    "cow with the crumpled horn that tossed the " 
  end
end

class LineNumber7 < LineNumber
  def self.handles?(num)
    num == 7
  end

  def phrase
    "maiden all forlorn that milked the " 
  end
end

class LineNumber8 < LineNumber
  def self.handles?(num)
    num == 8
  end

  def phrase
    "man all tattered and torn that kissed the " 
  end
end

class LineNumber9 < LineNumber
  def self.handles?(num)
    num == 9
  end

  def phrase
    "priest all shaven and shorn that married the " 
  end
end

class LineNumber10 < LineNumber
  def self.handles?(num)
    num == 10
  end

  def phrase
    "rooster that crowed in the morn that woke the " 
  end
end

class LineNumber11 < LineNumber
  def self.handles?(num)
    num == 11
  end

  def phrase
    "farmer sowing his corn that kept the " 
  end
end

class LineNumber12 < LineNumber
  def self.handles?(num)
    num == 12
  end

  def phrase
    "horse and the hound and the horn that belonged to the " 
  end
end