def bad_two_sum?(arr, target)
    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end
    end
    false 
end 
# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    sorted = arr.sort
    sorted.each do |ele|
        new_target = target - ele  
        if ele != new_target
            if sorted.bsearch {|x| x == new_target}
                return true 
            end
        end
    end
    false 
end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def hm_two_sum?(arr, target)    
    hash = Hash.new(0)
    arr.each do |ele|
        if hash.has_key?(target - ele)
            return true 
        else
            hash[ele] += 1
        end
    end
    false 
end


arr = [0, 1, 5, 7]
p hm_two_sum?(arr, 6) # => should be true
p hm_two_sum?(arr, 10) # => should be false