def bigram(str, type:)
  format_str =
    case type
    when :word
      str.scan(/\w+/)
    when :char
      str.chars
    end

  p format_str.each_cons(2).map(&:join)
end

bigram("I am an NLPer", type: :word)
bigram("I am an NLPer", type: :char)
