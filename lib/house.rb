class House
  attr_reader :intro
  def initialize(intro = "This is the ")
    @intro = intro
    @line_numbers = LineNumber.shuffle
  end
  
  def line(num)
    line = "#{@intro}"
    while (num > 0)
      verse = LineNumber.for(num)
      line << verse.phrase
      num = num - 1
    end
    line << ".\n"
  end

  def random_line(num)
    line = "#{@intro}"
    while (num > 0)
      verse = @line_numbers[num - 1].new
      line << verse.phrase
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
    @line_numbers = LineNumber.shuffle
  end
end

class LineNumber
  
  attr_reader :num

  def initialize(num = 0)
    @num = num
  end

  def self.handles?(num)
    True
  end

  def self.for(num)
    registry.find {|candidate| candidate.handles?(num)}.new(num)
  end

  def self.registry
    @registry ||= []
  end

  def self.register(candidate)
    registry.prepend(candidate)
  end

  def self.shuffle
    registry.delete(LineNumber1)
    registry.shuffle
    registry.unshift(LineNumber1)
  end

end

class LineNumber1 < LineNumber
  def self.handles?(num)
    num == 1
  end

  def phrase
    "house that Jack built"
  end

  def subject
    "house"
  end

  def verb
    "Jack built"
  end

  LineNumber.register(self)
end

class LineNumber2 < LineNumber
  def self.handles?(num)
    num == 2
  end

  def phrase
    "malt that lay in the "
  end

  def subject
    "malt"
  end

  def verb
    "lay in"
  end

  LineNumber.register(self)
end

class LineNumber3 < LineNumber
  def self.handles?(num)
    num == 3
  end

  def phrase
    "rat that ate the "
  end

  def subject
    "rat"
  end

  def verb
    "ate"
  end

  LineNumber.register(self)
end

class LineNumber4 < LineNumber
  def self.handles?(num)
    num == 4
  end

  def phrase
    "cat that killed the " 
  end

  def subject
    "cat"
  end

  def verb
    "killed"
  end

  LineNumber.register(self)
end

class LineNumber5 < LineNumber
  def self.handles?(num)
    num == 5
  end

  def phrase
    "dog that worried the " 
  end

  def subject
    "dog"
  end

  def verb
    "worried"
  end

  LineNumber.register(self)
end

class LineNumber6 < LineNumber
  def self.handles?(num)
    num == 6
  end

  def phrase
    "cow with the crumpled horn that tossed the " 
  end

  def subject
    "cow with the crumpled horn"
  end

  def verb
    "tossed"
  end

  LineNumber.register(self)
end

class LineNumber7 < LineNumber
  def self.handles?(num)
    num == 7
  end

  def phrase
    "maiden all forlorn that milked the " 
  end

  def subject
    "maiden all forlorn"
  end

  def verb
    "milked"
  end

  LineNumber.register(self)
end

class LineNumber8 < LineNumber
  def self.handles?(num)
    num == 8
  end

  def phrase
    "man all tattered and torn that kissed the " 
  end

  def subject
    "man all tattered and torn"
  end

  def verb
    "kissed"
  end

  LineNumber.register(self)
end

class LineNumber9 < LineNumber
  def self.handles?(num)
    num == 9
  end

  def phrase
    "priest all shaven and shorn that married the " 
  end

  LineNumber.register(self)
end

class LineNumber10 < LineNumber
  def self.handles?(num)
    num == 10
  end

  def phrase
    "rooster that crowed in the morn that woke the " 
  end

  LineNumber.register(self)
end

class LineNumber11 < LineNumber
  def self.handles?(num)
    num == 11
  end

  def phrase
    "farmer sowing his corn that kept the " 
  end

  LineNumber.register(self)
end

class LineNumber12 < LineNumber
  def self.handles?(num)
    num == 12
  end

  def phrase
    "horse and the hound and the horn that belonged to the " 
  end

  LineNumber.register(self)
end