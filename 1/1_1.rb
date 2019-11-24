class First
  def self.odd_index_str
    ans = []
    'パタトクカシーー'.each_char.with_index { |str, i| ans << str if i.odd? }
    ans.join
  end
end

puts First.odd_index_str
