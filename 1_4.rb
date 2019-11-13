words = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'.scan(/\w+/)
nums = [1, 5, 6, 7, 8, 9, 15, 16, 19].map(&:pred)

p words.map.with_index { |w, i| [nums.include?(i) ? w[0] : w[0, 2], words.index(w) + 1] }.to_h
