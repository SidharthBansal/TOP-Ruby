require './Node.rb'
#class Linked list initialized with head and tail both nil
class LinkedList
	def initialize
		@head = nil
		@tail = nil
	end
	#function to append a value
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
	#function to prepend a value
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
	#function to find size of linked list
	def size
		cur = @head
		count =0 
		until cur ==nil do 
			cur = cur.next_node
			count+=1
		end 
		count
	end
	#function to find head 
	def head
		@head
	end
	#function to find tail
	def tail
		@tail
	end
	#function to find node at a particulare index
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
	#function to pop
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
	#function to check whether an element exist ?
	def contains?(val)
		cur =@head
		until cur == nil do
			return true if cur.value == val		
			cur = cur.next_node	
		end
		return false
	end

	#function to find value if exists
	def find(val)
		cur =@head
		index = 0
		until cur == nil do
			return index if cur.value == val
			index+=1
			cur = cur.next_node
		end
		puts "ERROR:Element not found!!"
		return nil
	end
	#function to represent LinkedList objects as strings
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
	#function to insert a value at a particular value
	  # Inserts data at given index
  def insert_at(data, index)
    size = self.size
    if index == 1
      self.prepend(data)
      return nil
    elsif index == size + 1
      self.append(data)
      return nil
    elsif index > size || index < 0
      puts "Error: Index is not within list boundary!"
      return nil
    else
      node = @head
      count = 1
      until count == index
        if count < index
          prev = node
        end
        node = node.next_node
        count += 1
      end
      new_node = Node.new(data)
      new_node.next_node = node
      prev.next_node = new_node
    end
  end

  # Removes node at given index
  def remove_at(index)
    size = self.size
    if index > size || index < 0
      puts "Error: Index is not within list boundary!"
      return nil
    elsif index == size
      self.pop
      return nil
    elsif index == 1
      node = @head
      prev = node
      node = node.next_node
      prev.next_node = nil
      @head = node
      return nil
    else
      node = @head
      count = 1
      until count == index
        if count < index
          prev = node
        end
        node = node.next_node
        count += 1
      end
      prev.next_node = node.next_node
      node.next_node = node
    end
  end
end
# Tests

list = LinkedList.new
list.append(5)
list.append(7)
list.prepend(14)
list.append(34)
list.prepend("great")

p list
puts

puts "Size: #{list.size}"
puts list.head
puts list.tail
puts
puts list.at(3)
puts list.at(5)
puts list.at(15)
#puts list.at(-5)
puts

puts list.contains?(5)
puts list.contains?(34)
puts list.contains?(30)
puts

puts list.find(5)
puts list.find("great")
puts list.find(34)
puts list.find(44)
puts

puts list.to_s
puts

list.insert_at(33, 1)
list.insert_at(55, 7)
list.insert_at("hello", 3)
list.insert_at(5, 3)
puts list.to_s
puts

list.remove_at(99)
list.remove_at(1)
puts list.to_s
list.remove_at(4)
puts list.to_s
#list.remove_at(6)
puts list.to_s
puts

list.pop
p list
list.pop
p list
list.pop
p list
list.pop
p list
list.pop
p list
list.pop
p list

puts
puts list.contains?(34)
