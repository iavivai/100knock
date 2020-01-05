class First
  def self.word_length(words)
    words.scan(/\w+/).map(&:length)
  end
end

p First.word_length('Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.')
