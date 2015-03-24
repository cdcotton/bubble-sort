def bubble_sort(array)
    passes = array.length - 1
    passes.times do 
        i = 0
        while i < array.length - 1 do 
            if array[i] > array[i + 1]
                temp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = temp
            end
            i += 1    
        end
    end
    puts "Sorted array: #{array}"
end

def bubble_sort_by(array)
    passes = array.length - 1
    passes.times do 
        i = 0
        while i < array.length - 1 do 
            if yield(array[i], array[i + 1]) < 0
                temp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = temp
            end
            i += 1    
        end
    end
    puts "Sorted array: #{array}"
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	right.length - left.length
end

bubble_sort([4,3,78,2,0,2])
bubble_sort_by(["hi","hello","hey"])