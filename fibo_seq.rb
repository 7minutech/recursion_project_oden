def fibs(n)
  fibo_sequence = [0, 1, 1]
  num1 = 1
  num2 = 1
  (0...n - 3).each do
    temp = num2
    num2 += num1
    num1 = temp
    fibo_sequence.push(num2)
  end
  p fibo_sequence
end
fibs(8)
def fib(n)
  if n.zero?
    0
  elsif n <= 2
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

def fibs_rec(n)
  fib_seq = (0..n - 1).map do |i|
    fib(i)
  end
  p fib_seq
end

fibs_rec(8)
