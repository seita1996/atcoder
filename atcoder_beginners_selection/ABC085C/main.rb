# Q: https://atcoder.jp/contests/abs/tasks/abc085_c
n,y=gets.chomp.split(' ').map(&:to_i)

# TLE
# def search(n,y)
#   (n+1).times do |a|
#     (n+1-a).times do |b|
#       (n+1-a-b).times do |c|
#         if a + b + c == n && a*10000 + b*5000 + c*1000 == y
#           return "#{a} #{b} #{c}"
#         end
#       end
#     end
#   end
#   return '-1 -1 -1'
# end

# https://chat.openai.com/share/0e9ada8b-89e8-4528-8686-87eefbdfcd47
def search(n, y)
  (0..n).each do |a|
    b_c_total = n - a
    b_max = [b_c_total, y / 5000].min
    (0..b_max).each do |b|
      c = b_c_total - b
      if a + b + c == n && a * 10000 + b * 5000 + c * 1000 == y
        return "#{a} #{b} #{c}"
      end
    end
  end
  return '-1 -1 -1'
end

print("#{search(n,y)}\n")
