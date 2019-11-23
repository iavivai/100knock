def bigram(str, type:)
  format_str =
    case type
    when :word
      str.scan(/\w+/)
    when :char
      str.chars
    end
  format_str.each_cons(2).map(&:join)
end

x = bigram('paraparaparadise', type: :char)
y = bigram('paragraph', type: :char)

p x | y
p x & y
p x - y
