# Q: https://atcoder.jp/contests/abs/tasks/abc085_b
n=gets.chomp.to_i
d_ar=[]
n.times do
  d_ar << gets.chomp.to_i
end
print("#{d_ar.uniq.length}\n")
