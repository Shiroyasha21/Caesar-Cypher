
def caesar_cipher (string, integer)
  array = string.split("")
  ascii_array = array.map do |char| 
    if char.ord.between?(65, 90)
      ascii_char = (((char.ord - 65) + integer) % 26) + 65
      ascii_char.chr
    elsif char.ord.between?(97, 122)
      ascii_char = (((char.ord - 97) + integer) % 26) + 97
      ascii_char.chr
    else 
      char
    end
  end

  ascii_array.join
end

caesar_cipher("ABC, abc, xyz XYZ?", 5)







