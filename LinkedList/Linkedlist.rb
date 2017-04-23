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
		cur = @head
		count =0 
		until cur ==nil do 
			curr = curr.next_node
			count+=1
		end 
		count
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
			until prev.next_node == @tail do
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
		cur =@head
		index = 0
		until cur == nil do
			return index if cur.value == value
			index+=1
			cur = cur.next_node
		end
		puts "ERROR:Element not found!!"
		return nil
	end

	def to_s
		cur=@head
		st = ""
		until cur == nil do
			st<<"#{cur.value.to_s}->"
			cur =cur.next_node
		end
		st<<"nil"
		st
	end

	def insert_at(index,val)
		

	end

	def remove_at(index)

	end

end

