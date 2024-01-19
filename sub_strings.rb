dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word,dictionary)
	scanned = dictionary.map{ |phrase| word.scan(phrase).size > 0 ? word.scan(phrase) : nil }.compact.flatten.reduce(Hash.new(0)) do |hash,word|
		hash[word]+=1
		hash
	end
	p scanned
end

substrings("Howdy fellur howdy how areya? Doin good hm? i lowkey own a part of a partner from a Town called Midpartner that howdys anywon with low iq",dictionary)