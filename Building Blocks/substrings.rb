def substrings (input, dictionary)
	input=input.downcase
	output={}
	input_word=input.split
	dictionary.each do |def_word|
		input_word.each do |word|
			def_regex = def_word
			while !word.match(def_regex).nil?
				if output[def_word].nil?
					output[def_word]=1
				else
					output[def_word]+=1
				end
				def_regex += '.*'+def_word
			end
		end
	end
	output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)