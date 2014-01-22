class Encryptor


  def encrypt_letter(letter)
    # lowercase_letter = letter.downcase
    # cipher[lowercase_letter]

#OR
    cipher[letter.downcase]



  end

  def encrypt_string(words)
    #1. Cut the input string into letters
    letters = words.split('')

    #2. Encrypt those letters one at a time, gathering the results
    encrypted_letters = letters.collect do |character|
      encrypt_letter(character)
    end

    #3. Join the results back together in one string
    encrypted_letters.join('')
  end

  def cipher
    {
    'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 
    'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    'y' => 'l', 'z' => 'm', ' ' => ' '
    }
  end
  
      

end

