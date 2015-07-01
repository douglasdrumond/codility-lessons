# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
    # write your code in Ruby 2.2
    
    c = [0]*n
    max = 0
    min = 0
    a.each do |v|
        if v <= n
            if c[v-1] < min
                c[v-1] = min
            end
            c[v-1] += 1
            if c[v-1] > max
                max = c[v-1]
            end
        else
            min = max
        end
    end
    c.each_with_index do |v, i|
        if v < min
            c[i] = min
        end
    end

end

