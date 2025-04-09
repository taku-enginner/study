# 例外オブジェクトから情報を取得する
begin
  1 / 0
rescue => e
  puts "エラークラス： #{e.class}"
  puts "エラーメッセージ： #{e.message}" # messageメソッドで例外発生時のエラーメッセージを返す
  puts "バックトレース -----"
  puts e.backtrace # backtraceメソッドで例外発生時のバックトレースを返す
  puts "-----"
end