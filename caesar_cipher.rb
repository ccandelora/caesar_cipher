def caesar_cipher(string, shift)
  # Normalize shift to be within 0-25
  shift = shift % 26

  encrypted_string = ""
  string.each_char do |char|
    if char.match(/[A-Za-z]/)
      # Determine the base (97 for lowercase, 65 for uppercase)
      base = char.match(/[A-Z]/) ? 65 : 97
      # Convert to 0-25 range, shift, and wrap around with modulo
      new_pos = (char.ord - base + shift) % 26
      # Convert back to ASCII and append
      encrypted_string += (base + new_pos).chr
    else
      encrypted_string += char
    end
  end
  encrypted_string
end

puts caesar_cipher("What a string!", 5)
