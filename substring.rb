dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  dictionary.each do |word|
    string.downcase.scan(word).each do |match|
      result[word] += 1
    end
  end
  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
