class First
  def self.composition_str
    str = ''
    'パトカー'.each_char.with_index { |s, i| str += s + 'タクシー'[i] }
    str
  end
end

puts First.composition_str
