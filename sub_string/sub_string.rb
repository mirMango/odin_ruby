#random words
word_dictionary = ['below', 'low',  'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit' ]
string = "Below"

def substrings(string, dictionary)
  result = Hash.new(0)
  lowercase_string = string.downcase()

  dictionary.each do |word|
    matches = lowercase_string.scan(word).length

    if matches > 0
      result[word] = matches
    end
  end
  result
end

puts substrings(string, word_dictionary)
