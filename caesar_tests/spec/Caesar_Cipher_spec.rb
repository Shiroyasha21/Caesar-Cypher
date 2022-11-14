#spec/Caesar_Cipher_spec.rb

require '../caesar_cipher'

describe CaesarCipher do
  before { @cipher = CaesarCipher.new }

  describe "#caesar_cipher" do
    it "returns a ciphered string when given a string and a shift 3" do
      expect(@cipher.caesar_cipher('What the hell?', 3)).to eql('Zkdw wkh khoo?')
    end

    it 'returns a shift 2 deciphered string' do
      expect(@cipher.caesar_cipher('Ufyr rfc fcjj?', 2)).to eql('What the hell?')
    end

    it 'returns an all caps ciphered string when given all caps string on shift 5' do
      expect(@cipher.caesar_cipher('RCVO VMZ TJP YJDIB?', 5)).to eql('WHAT ARE YOU DOING?')
    end

    it 'returns given string if shift is 0' do
      expect(@cipher.caesar_cipher('Thanks!!', 0)).to eql('Thanks!!')
    end

    it 'returns a ciphered string with same cases on shift 3' do
      expect(@cipher.caesar_cipher('A weird Game of Thrones!?.', 3)).to eql('D zhlug Jdph ri Wkurqhv!?.')
    end
  end
end