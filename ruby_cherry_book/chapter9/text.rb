# begin
#   例外が起きうる処理
# rescue 補足したい例外クラス
#   例外が発生した場合の処理
# end

begin
  1 / 0
rescue  ZeroDivisionError
  puts "0で除算しました"
end

begin
  # NoMethodErrorを発生させる
  "abc".foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end

# 例外オブジェクトを変数に格納する
begin
  "abc".foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー： #{e.class} #{e.message}"  
end