CAPS_STARTING_POSITION = "A".ord
CAPS_ENDING_POSITION = "Z".ord
LOWER_STARTING_POSITION = "a".ord
LOWER_ENDING_POSITION = "z".ord
def cipher(str,n )
	output=""
	str.split("").each do |c|
			if c.ord.between?(CAPS_STARTING_POSITION,CAPS_ENDING_POSITION) 
				c = ((c.ord-CAPS_STARTING_POSITION+n)%26+CAPS_STARTING_POSITION).chr
			elsif c.ord.between?(LOWER_STARTING_POSITION,LOWER_ENDING_POSITION) 
				c = ((c.ord-LOWER_STARTING_POSITION+n)%26+LOWER_STARTING_POSITION).chr
			end 
			output<<c
		
	end
	puts output
end

cipher("wHO i am",5)