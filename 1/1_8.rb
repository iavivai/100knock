def cipher(word)
  lowercase = 97..122
  word.chars.map { |str| lowercase.include?(str.ord) ? (219 - str.ord).chr : str }.join
end

p cipher('Empathy')
p cipher('VirtualBox')
p cipher('instance method')
