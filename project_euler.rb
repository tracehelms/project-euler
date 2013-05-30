require_relative 'src/p1'
require_relative 'src/p2'

puts "Problem 1: " + Problem1.new.sum_it(1000, [3, 5]).to_s
puts "Problem 2: " + Problem2.new.fibonacci_sum(4000000, :even).to_s
