# Q: https://atcoder.jp/contests/abs/tasks/abc081_b

def devide(args,cnt=0)
  if args.any?(&:odd?)
    return cnt
  else
    cnt += 1
    devide(args.map{|n| n/2},cnt)
  end
end

n=gets.to_i
an=gets.chomp.split(' ').map(&:to_i)
print("#{devide(an)}\n")
