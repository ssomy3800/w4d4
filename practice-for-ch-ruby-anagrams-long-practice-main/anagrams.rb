require 'byebug'

def first_anagram?(str1, str2)
    permutations = str1.chars.permutation.map(&:join)
    permutations.include?(str2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    (0...str1.length).each do |i|
        idx = str2.index(str1[i])

        if idx == nil 
            return false 
        else 
            str2 = str2[0...idx] + str2[idx+1..-1] # n + n(because of concat) + n
        end

    end

    str2.length == 0

end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char { |char| hash1[char] += 1 }
    str2.each_char { |char| hash2[char] += 1 }

    hash1 == hash2  #O(n)

end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

def bonus_anagram?(str1, str2)
    count = Hash.new(0)

    str1.each_char { |char| count[char] += 1 }

    str2.each_char { |char| count[char] -= 1 }

    count.all? { |k,v| v == 0}

end

p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true