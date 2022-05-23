class House
  def line(num)
    case num
    when 1
      "#{intro} #{jack}.\n"
    when 2
      "#{intro} #{malt} #{jack}.\n"
    when 3
      "#{intro} #{rat} #{malt} #{jack}.\n"
    when 4
      "#{intro} #{cat} #{rat} #{malt} #{jack}.\n"
    when 5
      "#{intro} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 6
      "#{intro} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 7
      "#{intro} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 8
      "#{intro} #{man} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 9
      "#{intro} #{priest} #{man} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 10
      "#{intro} #{rooster} #{priest} #{man} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 11
      "#{intro} #{horse(num)}#{farmer} #{rooster} #{priest} #{man} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    when 12
      "#{intro} #{horse(num)} #{farmer} #{rooster} #{priest} #{man} #{maiden} #{cow} #{dog} #{cat} #{rat} #{malt} #{jack}.\n"
    end
  end

  def intro
    "This is the"
  end

  def jack
    "house that Jack built"
  end

  def malt
    "malt that lay in the"
  end

  def rat
    "rat that ate the"
  end

  def cat
    "cat that killed the"
  end

  def dog
    "dog that worried the"
  end

  def cow
    "cow with the crumpled horn that tossed the"
  end

  def maiden
    "maiden all forlorn that milked the"
  end

  def man
    "man all tattered and torn that kissed the"
  end

  def priest
    "priest all shaven and shorn that married the"
  end

  def rooster
    "rooster that crowed in the morn that woke the"
  end

  def farmer
    "farmer sowing his corn that kept the"
  end

  def horse(num)
    if num == 12
      "horse and the hound and the horn that belonged to the"
    end
  end

  def recite
    1.upto(12).collect { |i| line(i) }.join("\n")
  end
end