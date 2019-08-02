def bubble_sort(array)
(array.size-1).downto(1).each do | j |
1.upto(j).each do | i |
if array[i] < array[i-1]
array[i], array[i-1] = array[i-1], array[i]
end
end
end
return array
end

bubble_sort([1,5,3,7,4,2])
