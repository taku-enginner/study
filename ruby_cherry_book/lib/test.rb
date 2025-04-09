s = ""
# (empty?は文字列が空文字だったときにtrueを返し、それ以外はfalseを返すメソッド)
if s.empty? == true
  puts "空文字です"
end

# こう書く
if s.empty?
  puts "空文字です"
end

n = 123
# (zero?は数値が0だったときにtrueを返し、それ以外はfalseを返すメソッド)
if n.zero? == false
  puts "ゼロではありません"
end

# こう書く
if !n.zero?
  puts "ゼロではありません"
end

# rubyはnilを偽として扱うので、==nilや!=nilを書くこともあまりない。
# ただし、「対象データが未存在である」ことを明示するため、nil?メソッドが使われることはある
user = nil

# こうではなく...
if user == nil
  puts "nilです"
end

# こう書く
if !user
  puts "nilです"
end

# またはこう
if user.nil?
  puts "nilです"
end

# trueまたはfalseそのものであることを判定したいときが稀にある
some_value = true
# 1やOKではなく、trueであるかどうかを判定したい
if some_value == true
  "trueそのものです"
end