# Q: https://atcoder.jp/contests/abs/tasks/abc086_a
a,b=gets.chomp.split(' ').map(&:to_i)
x=a*b
if x%2==0
  print("Even\n")
else
  print("Odd\n")
end
