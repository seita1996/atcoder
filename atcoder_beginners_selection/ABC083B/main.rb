# Q: https://atcoder.jp/contests/abs/tasks/abc083_b
n,a,b=gets.chomp.split(' ').map(&:to_i)
cnt=0
n.times do |i|
  x=(i+1).to_s.chars.map(&:to_i).sum
  cnt+=(i+1) if a<=x && x<=b
end
print("#{cnt}\n")
