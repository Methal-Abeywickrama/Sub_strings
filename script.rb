dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(words, list)
    word_array = words.split
    reduced_list = list.reduce(Hash.new(0)) |equal_list, item| do 
        matching_words = words.select {|word| word.include?(item)}
        equal_list[item] = matching_words.length
        equal_list
        end
    reduced_list
end

p substring("Howdy partner, sit down! How's it going?", dictionary)