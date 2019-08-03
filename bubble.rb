def bubble_sort(arr)
    n = arr.size - 1
    swap = true
    while  swap
        swap = false
        for i in  1..n
            if arr[i - 1] > arr[i]
                swap = true
                arr[i - 1],arr[i] = arr[i],arr[i - 1]
            end
        end
        n-=1
    end
    print arr
  
end
bubble_sort([1,5,3,7,4,2])

def bubble_sort_by(arr)
    

    n = arr.size - 1
    swap = true
    while  swap
        swap = false
        for i in  1..n
            if yield(arr[i - 1],arr[i] ) > 0
                swap = true
                arr[i - 1],arr[i] = arr[i],arr[i - 1]
            end
        end
        n-=1
    end
    print arr
  
end

  bubble_sort_by(["hi","hello","hey"]){|left,right| left.length - right.length} 