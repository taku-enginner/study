# method_1にだけ例外処理を記述する
# 例外が発生した場所から1つずつ戻ってくる。

def method_1
  puts "method_1 start."
  begin
    method_2
  rescue
    puts "例外が発生しました。"
  end
  puts "method_1 end."
end

# method_1をオーバーライドして例外処理を無くしたら、すべてのメソッドをさかのぼってエラーでプログラムが止まる
def method_1
  puts "method_1 start."
  method_2
  puts "method_1 end."
end

def method_2
  puts "method_2 start."
  method_3
  puts "method_2 end."
end

def method_3
  puts "method_3 start." 
  # ZeroDivisionError (整数を⓪で除算しようとした場合に発生する例外)を発生させる
  1/0
  puts "method_3 end."
end

# 処理を開始
method_1