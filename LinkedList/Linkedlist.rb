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
		unless index < size
			puts "Error:Index out of boundary!"
			return nil
		end
		count = 1
		node=@head
		until count == index
			count+=1
			node = node.next_node
		end
		node
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

	 def insert_at(index, val)
    new_node = Node.new(val)
    prev = at(index - 1)
    curr = prev.next_node
    prev.next_node = new_node
    new_node.next_node = curr

    @head = new_node if index == 0
    @tail = new_node if index == size - 1
  end

  def remove_at(index)
    if index == 0
      @head = @head.next_node
    else
      prev = at(index - 1)
      prev.next_node = prev.next_node.next_node
      @tail = at(size - 1) if index == size
    end
  end
end