str = ''

'パトカー'.chars.each_with_index { |s, i| str += s + 'タクシー'[i] }
puts str
