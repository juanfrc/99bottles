class Bottles

  def initialize
  end

  def verse(number)
    verse_text(number)
  end

  def verses(initial_number, final_number = initial_number)
    initial_number.downto(final_number).map {|i| verse_text(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end


  def verse_text(number)
    if number.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      second_verse(number)
    end
  end

  def second_verse(number)
    if number != 2
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    else
      "Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
    end
  end
end
