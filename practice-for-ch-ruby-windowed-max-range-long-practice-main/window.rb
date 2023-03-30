def windowed_max_range(arr, size)
    current_max_range = nil 
        # (0..arr.length-size).each do |i|
        #     (size-1...arr.length).each do |j|
        i = 0
        j = size - 1
        while i <= arr.length - size 
            
            min = arr[i..j].min 
            max = arr[i..j].max
            temp = max - min 
            if current_max_range == nil || current_max_range < temp 
                current_max_range = temp 
            end
            i +=1 
            j +=1
        end
    
    current_max_range
end 
p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
