def bubble_sort(array)
  (array.size-1).times do
    array.each_with_index do |a, i|
      if i<array.size-1 and array[i]>array[i+1]
        b = array[i]
        array[i] = array[i+1]
        array[i+1] = b
      end
    end
  end
  array.inspect
end

def bubble_sort_by(array, &block)
  for i in 0..(array.size-1) do
    array.each_with_index do |a, i|
      if i<array.size-1
        if yield(a, array[i+1]) < 0
          b = a
          array[i] = array[i+1]
          array[i+1] = b
        end
      end
    end
  end
  puts array.inspect
end
a = gets.chomp.split(" ")
puts bubble_sort(a)
bubble_sort_by(["hi","hello","hey"]) {|left, right| right.length - left.length}