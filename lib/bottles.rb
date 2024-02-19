class Bottles
  def verse(number)
    if number == 0
      last_verse()
    else
      "#{number} #{pluralize(number)} of beer on the wall, " +
      "#{number} #{pluralize(number)} of beer.\n" +
      "Take #{number == 1 ? "it" : "one"} down and pass it around, " +
      last_line(number)
    end
  end

  def verses(from, to)
    verses = []
    (from).downto(to).each do |i|
      verses << verse(i)
    end
    verses.join("\n")
  end

  def pluralize(number)
    number == 1 ? "bottle" : "bottles"
  end

  def last_line(number)
    if number - 1 > 0 then
      "#{number - 1} #{pluralize(number - 1)} of beer on the wall.\n"
    else
      "no more bottles of beer on the wall.\n"
    end
  end

  def last_verse()
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def song()
    verses(99, 0)
  end
end
