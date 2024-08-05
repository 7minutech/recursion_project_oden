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
