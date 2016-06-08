def canonical(word)
  word.split("").sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

# def anagrams_for(word, array)
#   arr = []
#   array.each do |w| 
#     if canonical(word) == canonical(w)
#       arr << w
#     end
#   end
#   p arr
# end

def anagrams_for(word, array)
 p array.select {|w| canonical(word) == canonical(w)}
end

anagrams_for("gato", ["otag", "gaot", "hugo"])