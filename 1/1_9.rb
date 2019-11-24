def typoglycemia(str)
  str.split.map do |word|
    word.size > 4 ? word[0] + word[1..-2].split('').shuffle.join + word[-1] : word
  end.join(' ')
end

string = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
puts typoglycemia(string)
