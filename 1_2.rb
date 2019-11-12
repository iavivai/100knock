str = ''

'パトカー'.each_char.with_index { |s, i| str += s + 'タクシー'[i] }
puts str
