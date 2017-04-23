require './Node.rb'

class LinkedList
	def initialize
		@head = nil
		@tail = nil
	end

	def append(val)
		new_node=Node.new(val)
		if@head==nil
			@head=new_node
			@tail=@head
		else
			@tail.next_node = new_node
			@tail=new_node
		end
	end

	def prepend(val)
		new_node=Node.new(val)
		if@head==nil
			@head=new_node
			@tail=@head
		else
			new_node.next_node = @head
			@head=new_node
		end
	end

	def size

	end

	def head
		@head
	end
	def tail
		@tail
	end
	def at(index)

	end

	def pop
		if@head==nil
			puts "Error:Linked List is empty!!!"
		elsif @head==@tail
			pop_node=@tail
			@head=nil
			@tail=nil
			return pop_node
		else
			prev=@head
			until prev.next_node == @tail
				prev = prev.next_node
			end
			pop_node=@tail
			prev.next_node = nil
			@tail = prev
			return pop_node
		end	
	end

	def contains?(val)
		cur =@head
		until cur == nil do
			return true if cur.value == val		
			cur = cur.next_node	
		end
		return false
	end


	def find(val)

	end

	def to_s

	end

	def insert_at(index)

	end

	def remove_at(index)

	end

end

