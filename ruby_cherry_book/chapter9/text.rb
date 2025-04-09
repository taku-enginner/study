# 例外クラスの継承関係とrescue節を各順番に注意しないと、永遠に実行されないrescue節を作ることになる。

# 間違った例外処理の例
begin
  # NoMethodErrorを発生させる
  "abc".foo
rescue NameError
  # NoMethodErrorはここで補足される
  puts "NameErrorです"
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts "NoMethodErrorです"
end

# 正しい例
begin
  # NoMethodErrorを発生させる
  "abc".foo
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts "NoMethodErrorです"
rescue NameError
  # NoMethodErrorはここで補足される
  puts "NameErrorです"
end

# 正しい例(NameError発生)
begin
  # NameErrorを発生させる
  Foo.new
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts "NoMethodErrorです"
rescue NameError
  # NoMethodErrorはここで補足される
  puts "NameErrorです"
end


# 最後に書くとしたらStandardError
begin
  # NameErrorを発生させる
  1 / 0
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts "NoMethodErrorです"
rescue NameError
  # NoMethodErrorはここで補足される
  puts "NameErrorです"
rescue StandardError
  puts "その他のエラーです"
end


# StandardErrorとそのサブクラスを補足するなら、そもそもクラスを指定する必要が無いので、省略するのがシンプル
begin
  # NameErrorを発生させる
  1 / 0
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts "NoMethodErrorです"
rescue NameError
  # NoMethodErrorはここで補足される
  puts "NameErrorです"
rescue # StandardErrorを指定しない
  puts "その他のエラーです"
end