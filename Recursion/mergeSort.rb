def mergeSort(array)
	return array if array.length==1
	merge mergeSort(array[0...array.length/2]), mergeSort(array[array.length/2..-1])	

end
def merge(a1,a2)
   	result=[]
	if a1.first<=a2.first
		result<<a1.first
		a1.shift 
	else
		result<<a2.first
		a2.shift
	end
result + a1 + a2
end
array=[12,312,3211,432]
print mergeSort(array)
