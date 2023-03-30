list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def P1_my_min(arr)
    (0...arr.length).each do |i|
        return arr[i] if arr.all?{|ele| arr[i] <= ele}
    end
end

def P2_my_min(arr)
    min = arr.first
    arr.each do |ele|
        min = ele if ele < min  
    end
    return min
end

# p P1_my_min(list)  # =>  -5

# p P2_my_min(list)

def P1_LCS(arr)
    result = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            result << arr[i..j].sum
        end
    end
    return result.max 

end

def P2_LCS(arr)
    current = 0
    max = 
    arr.each do |ele|
        current = current + ele  
        if current > max 
            max = current 
        end
    end
    if max == 0
        return arr.max 
    else 
        return max 
    end
end

list2 = [5, 3, -7]
list3 = [2, 3, -6, 7, -6, 7]
list4 = [-5, -1, -3]
# p P1_LCS(list2)
# p P1_LCS(list3)
# p P1_LCS(list4)
p P2_LCS(list2)
p P2_LCS(list3)
p P2_LCS(list4)