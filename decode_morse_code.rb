MORSE_HASH =
  { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-.....' => '6',
    '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0' }.freeze

def decode_morse(message)
  words = message.split(/   /)
  arr = []
  words.each do |word|
    arr.push decode_word(word)
  end
  arr.join(' ')
end

def decode_word(word)
  chars = word.split(/ /)
  str2 = ''
  chars.each do |character|
    str2 += decode_char(character)
  end
  str2
end

def decode_char(char)
  MORSE_HASH[char]
end

puts decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
