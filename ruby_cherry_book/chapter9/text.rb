# rescue節に例外クラスを指定した場合、補足されるのはそのクラス自身とサブクラス。
# Exceptionクラスを指定すると、StandardErrorと無関係のエラーまで補足することになる。

# 悪い例
begin
  # 例外が起きそうな処理
rescue Exception
  # Exceptionとそのサブクラスが補足される。つまり、NoMemoryErrorやSystemExitまで補足される。  
end