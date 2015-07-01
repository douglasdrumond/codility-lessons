# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
    # write your code in Ruby 2.2

    count = [0]*(x+1)
    sum = 0
    
    a.each_with_index do |v, i|
        if count[v] == 0
            count[v] = 1
            sum += 1
            if sum == x
                return i
            end
        end
    end

    return -1
end
