# Q: https://atcoder.jp/contests/abs/tasks/abc088_b
n=gets.chomp.to_i
a_ar=gets.chomp.split(' ').map(&:to_i).sort{|a,b| b <=> a}
alice=0
bob=0
a_ar.each_with_index do |ai,idx|
  if idx.even?
    alice+=ai
  else
    bob+=ai
  end
end
print("#{alice-bob}\n")
