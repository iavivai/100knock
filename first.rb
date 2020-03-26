class First
  class << self
    def zero
      'stressed'.reverse
    end

    def first
      ans = []
      'パタトクカシーー'.each_char.with_index { |str, i| ans << str if i.odd? }
      ans.join
    end

    def second
      str = ''
      'パトカー'.each_char.with_index { |s, i| str += s + 'タクシー'[i] }
      str
    end

    def third
      words = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
      words.scan(/\w+/).map(&:length)
    end

    def four
      words = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'.scan(/\w+/)
      nums = [1, 5, 6, 7, 8, 9, 15, 16, 19].map(&:pred)

      words.map.with_index { |w, i| [nums.include?(i) ? w[0] : w[0, 2], words.index(w) + 1] }.to_h
    end

    def five(str, type:)
      format_str = case type
                   when :word
                     str.scan(/\w+/)
                   when :char
                     str.chars
                   end

      format_str.each_cons(2).map(&:join)
    end

    alias_method :six, :five

    def seven(x, y, z)
      "#{x}時の#{y}は#{z}"
    end

    def eight(word)
      lowercase = 97..122
      word.chars.map { |str| lowercase.include?(str.ord) ? (219 - str.ord).chr : str }.join
    end

    def nine
      str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

      str.split.map do |word|
        word.size > 4 ? word[0] + word[1..-2].split('').shuffle.join + word[-1] : word
      end.join(' ')
    end
  end
end
