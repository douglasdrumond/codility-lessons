# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    # write your code in Ruby 2.2
    
    n = a.length
    
    b = [0]*(n+1) # I want to index from 1
    b[0] = 1 # hack to avoid an "if"

    a.each { |v|
        if v > 0 and v <= n # don't care about non-positive numbers
            b[v] = 1
        end
    }
    
    b.each_with_index { |v, i|
        if v == 0
            return i
        end
    }
    
    n + 1
end
