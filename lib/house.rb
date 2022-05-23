class House
  def line(num)
    case num
    when 1
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{jack}.\n"
    when 2
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{malt}#{jack}.\n"
    when 3
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{rat}#{malt}#{jack}.\n"
    when 4
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{cat}#{rat}#{malt}#{jack}.\n"
    when 5
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 6
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 7
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 8
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 9
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 10
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 11
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    when 12
      "#{intro}#{horse(num)}#{farmer(num)}#{rooster(num)}#{priest(num)}#{man(num)}#{maiden}#{cow}#{dog}#{cat}#{rat}#{malt}#{jack}.\n"
    end
  end

  def intro
    "This is the "
  end

  def jack
    "house that Jack built"
  end

  def malt
    "malt that lay in the "
  end

  def rat
    "rat that ate the "
  end

  def cat
    "cat that killed the "
  end

  def dog
    "dog that worried the "
  end

  def cow
    "cow with the crumpled horn that tossed the "
  end

  def maiden
    "maiden all forlorn that milked the "
  end

  def man(num)
    if num >= 8
      "man all tattered and torn that kissed the "
    end
  end

  def priest(num)
    if num >= 9
      "priest all shaven and shorn that married the "
    end
  end

  def rooster(num)
    if num >= 10
      "rooster that crowed in the morn that woke the "
    end
  end

  def farmer(num)
    if num >= 11
      "farmer sowing his corn that kept the "
    end
  end

  def horse(num)
    if num == 12
      "horse and the hound and the horn that belonged to the "
    end
  end

  def recite
    1.upto(12).collect { |i| line(i) }.join("\n")
  end
end