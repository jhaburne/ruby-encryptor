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
    clear_char << "\n"
    rotated_char = clear_char.rotate(rotation)
    cipher_hash = clear_char.zip(rotated_char)
    new_cipher = Hash[cipher_hash]
    

  end
  
  def decrypt_string(words, rotation)
    encrypt_string(words,-rotation)
  end

  def encrypt_file(filename,rotation)
    #1. Create file handle
    read_clear = File.open(filename, "r")
    #2. Read clear text
    contents = read_clear.read
      #2a. Close the file
    #3. Encrypt the clear text
    encrypted_contents = encrypt_string(contents,rotation)
    #4. Name encrypted output file
    encrypted_filename = "#{filename}.crypt"
    #5. Create output file handle
    write_garbled = File.open(encrypted_filename, "w")
    #6. Write encrypted text
    write_garbled.write(encrypted_contents)
    write_garbled.close
  end

  def decrypt_file(filename,rotation)
    read_crypt = File.open(filename,"r")
    contents = read_crypt.read
    cleartext = decrypt_string(contents,rotation)
    cleartext_filename = "#{filename}.clear"
    write_clear = File.open(cleartext_filename,"w")
    write_clear.write(cleartext)
    write_clear.close


  end




      

end

