# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    # write your code in Ruby 2.2
    sum = a.inject(0, :+)
    n = a.length
    expected = n * (n+1)/2
    diff = sum - expected
    missing = n + 1 - diff
end


