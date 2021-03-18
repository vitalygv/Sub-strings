def substrings(str, dictionary)
  str.downcase!
  result = dictionary.reduce(Hash.new) do |result, word|
    sum = str.scan(word).count
    result[word] = sum unless sum < 1
    result
  end    
  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
substrings("below", dictionary)
 
substrings("Howdy partner, sit down! How's it going?", dictionary)
