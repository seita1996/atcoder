# Q: https://atcoder.jp/contests/abs/tasks/abc087_b
a=gets.to_i
b=gets.to_i
c=gets.to_i
x=gets.to_i

# 500円玉の金額パターン
a_ar=[0]
a.times do |i|
  a_ar<<(i+1)*500
end
# 100円玉の金額パターン
b_ar=[0]
b.times do |i|
  b_ar<<(i+1)*100
end
# 50円玉の金額パターン
c_ar=[0]
c.times do |i|
  c_ar<<(i+1)*50
end

cnt=0
a_ar.each do |ai|
  b_ar.each do |bi|
    c_ar.each do |ci|
      if ai+bi+ci == x
        cnt+=1
      end
    end
  end
end
print("#{cnt}\n")
