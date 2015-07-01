# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    # write your code in Ruby 2.2
    
    is_perm = 0
    
    n = a.length
    b = [0]*n
    
    
    a.each do |v|
        break if v > n 
        break if b[v] == 1 
        b[v] = 1
    end
    
    sum = b.inject(:+)
    if sum == n
        is_perm = 1
    end
    
    is_perm
end
