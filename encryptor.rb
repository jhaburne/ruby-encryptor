class Encryptor


  def encrypt_letter(letter, rotation)
    # lowercase_letter = letter.downcase
    # cipher[lowercase_letter]

#OR
    cipher(rotation)[letter]



  end

  def encrypt_string(words, rotation)
    #1. Cut the input string into letters
    letters = words.split('')

    #2. Encrypt those letters one at a time, gathering the results
    encrypted_letters = letters.collect do |character|
      encrypt_letter(character, rotation)
    end

    #3. Join the results back together in one string
    encrypted_letters.join('')
  end

  #alias_method :decrypt_string, :encrypt_string

  def cipher(rotation)
    clear_char = (' '..'z').to_a
    rotated_char = clear_char.rotate(rotation)
    cipher_hash = clear_char.zip(rotated_char)
    new_cipher = Hash[cipher_hash]
    

  end
  
  def decrypt_string(words, rotation)
    encrypt_string(words,-rotation)
  end




      

end

