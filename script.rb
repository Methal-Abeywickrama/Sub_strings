dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(words, list)
    word_array = words.split
    reduced_list = list.reduce(Hash.new(0)) do |equal_list, item| 
        matching_words = word_array.select {|word| word.include?(item)}
        equal_list[item] = matching_words.length
        equal_list
        end
    reduced_list = reduced_list.select {|k, v| v != 0}
end

p substring("Howdy partner, sit down! How's it going?", dictionary)