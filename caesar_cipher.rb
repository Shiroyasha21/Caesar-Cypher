# frozen_string_literal: false

# Take a string and an integer to decipher it using Caesar Cipher
class CaesarCipher
  def caesar_cipher (string, integer)
    ascii_array = string.split('').map do |char|
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
end
