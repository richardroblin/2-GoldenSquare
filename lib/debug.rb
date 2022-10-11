def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "cipher is #{cipher}" 
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    p "ciphertext_chars is #{ciphertext_chars}"
    p 65.chr
    return ciphertext_chars.join
end
  
def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "cipher is #{cipher}" 
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    p "plaintext_chars is #{plaintext_chars}"
    return plaintext_chars.join
end

def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char] += 1
    end
    counter.sort_by { |k, v| -v }[0][0]
end
  
  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  