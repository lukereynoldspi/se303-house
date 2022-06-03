class House
  attr_reader :intro
  def initialize(intro = "This is the ")
    @intro = intro
    @line_numbers = LineNumber.shuffle
    @subjects = LineNumber.shuffle_subject
    @verbs = LineNumber.shuffle_verb
  end
  
  def line(num)
    line = "#{@intro}"
    while (num > 1)
      verse = LineNumber.for(num)
      line << ("#{verse.subject} that #{verse.verb} the ")
      num = num - 1
    end
    verse = LineNumber.for(num)
    line << ("#{verse.subject} that #{verse.verb}")
    line << ".\n"
  end

  def random_line(num)
    line = "#{@intro}"
    while (num > 1)
      verse = @line_numbers[num - 1].new
      line << ("#{verse.subject} that #{verse.verb} the ")
      num = num - 1
    end
    verse = @line_numbers[num - 1].new
    line << ("#{verse.subject} that #{verse.verb}")
    line << ".\n"
  end

  def random_subject_verb(num)
    line = "#{@intro}"
    while (num > 1)
      line << ("#{@subjects[num - 1]} that #{@verbs[num - 1]} the ")
      num = num - 1
    end
    verse = LineNumber.for(num)
    line << ("#{verse.subject} that #{verse.verb}")
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

  def self.shuffle_subject
    subjects = []
    for line_number in registry do
      subjects.append(line_number.new.subject)
    end
    subjects.shuffle
  end

  def self.shuffle_verb
    verbs = []
    for line_number in registry do
      verbs.append(line_number.new.verb)
    end
    verbs.shuffle
  end
end

class LineNumber1 < LineNumber
  def self.handles?(num)
    num == 1
  end

  def subject
    "house"
  end

  def verb
    "Jack built"
  end

end

class LineNumber2 < LineNumber
  def self.handles?(num)
    num == 2
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

  def subject
    "priest all shaven and shorn"
  end

  def verb
    "married"
  end

  LineNumber.register(self)
end

class LineNumber10 < LineNumber
  def self.handles?(num)
    num == 10
  end

  def subject
    "rooster that crowed in the morn"
  end

  def verb
    "woke"
  end

  LineNumber.register(self)
end

class LineNumber11 < LineNumber
  def self.handles?(num)
    num == 11
  end

  def subject
    "farmer sowing his corn"
  end

  def verb
    "kept"
  end

  LineNumber.register(self)
end

class LineNumber12 < LineNumber
  def self.handles?(num)
    num == 12
  end

  def subject
    "horse and the hound and the horn"
  end

  def verb
    "belonged to"
  end

  LineNumber.register(self)
end