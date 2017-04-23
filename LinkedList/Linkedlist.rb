require './Node.rb'

class LinkedList
	def initialize
		@head = nil
		@tail = nil
	end

	def append
		new_node=Node.new(val)
		if@head==nil
			@head=new_node
			@tail=@head
		else
			@tail.next_node = new_node
			@tail=new_node
		end
	end

	def prepend

	end

	def size
	end

	def head
		 @tail
	end
	def tail
		 @tail
	end
	def at(index)
	end
	def pop
	end
	def contains?
	end
	def find(data)
	end
	def to_s
	end
	def insert_at(index)
	end
	def remove_at(index)
	end

end

