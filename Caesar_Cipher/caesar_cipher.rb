
def caesar_cipher(string, offset)
  code = []
  alpha = ('a'..'z').to_a
  string.each_char do |char|
    if alpha.include?(char)
      index = alpha.index(char)      
      mod = (index + offset).modulo(26)
      code << alpha[mod]
    elsif alpha.include?(char.downcase)
      index = alpha.index(char.downcase)
      mod = (index + offset).modulo(26)
      code << alpha[mod].upcase
    else
      code << char
    end
  end 
  return code.join
end

caesar_cipher("What a string!", 5)