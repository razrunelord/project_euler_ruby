#generate first n fibonacci

#simple, low-overhead timer
require './../lib/simple_timer.rb'
t = SimpleTimer.new({start_now: true})

# require 'ruby-prof'

# # Profile the code
# RubyProf.start

def fib(n)
    if n < 2
        n
    else
        fib(n-1)+fib(n-2)
    end
end

fibs = []
i = 1

while fib(i) < 4000000
    fibs << fib(i)
    i+=1
end

even_fibs = fibs.select do |num|
    num.even?
end 

sum = even_fibs.reduce(:+)

puts sum

# simple, low-overhead timer stop
t.stop