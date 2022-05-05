def caesar_cipher(message = '', shift = 0)
  alphabet = ('a'..'z').to_a
  caesar_string = ''
  message.split('').each do |letter|
    l = letter.downcase
    if alphabet.include?(l)
      is_downcase = l == letter
      new_index = (shift + alphabet.index(l)) % alphabet.length
      new_letter = alphabet[new_index]
      caesar_string << (is_downcase ? new_letter : new_letter.upcase)
    else
      caesar_string << letter
    end
  end
  caesar_string
end

puts caesar_cipher('Hello, there, Mrs. Stone!', 1) 