class House
  def line(num)
    line_number = LineNumber.new(num)
    "#{line_number.intro}"+
    "#{line_number.horse}"+
    "#{line_number.farmer}"+
    "#{line_number.rooster}"+
    "#{line_number.priest}"+
    "#{line_number.man}"+
    "#{line_number.maiden}"+
    "#{line_number.cow}"+
    "#{line_number.dog}"+
    "#{line_number.cat}"+
    "#{line_number.rat}"+
    "#{line_number.malt}"+
    "#{line_number.jack}"+
    ".\n"
  end

  def recite
    1.upto(12).collect { |i| line(i) }.join("\n")
  end
end

class LineNumber
  
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def intro
    "This is the "
  end

  def jack
    if num >= 1
      "house that Jack built"
    end
  end

  def malt
    if num >= 2
      "malt that lay in the "
    end
  end

  def rat
    if num >= 3
      "rat that ate the "
    end
  end

  def cat
    if num >= 4
      "cat that killed the "
    end
  end

  def dog
    if num >= 5
      "dog that worried the "
    end
  end

  def cow
    if num >= 6
      "cow with the crumpled horn that tossed the "
    end
  end

  def maiden
    if num >= 7
      "maiden all forlorn that milked the "
    end
  end

  def man
    if num >= 8
      "man all tattered and torn that kissed the "
    end
  end

  def priest
    if num >= 9
      "priest all shaven and shorn that married the "
    end
  end

  def rooster
    if num >= 10
      "rooster that crowed in the morn that woke the "
    end
  end

  def farmer
    if num >= 11
      "farmer sowing his corn that kept the "
    end
  end

  def horse
    if num == 12
      "horse and the hound and the horn that belonged to the "
    end
  end
end

class LineNumber1 < LineNumber
  def jack
    "house that Jack built"
  end
end

class PirateLineNumber < LineNumber
  def intro
    "Thar be the "
  end
end