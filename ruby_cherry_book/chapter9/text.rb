# 想定外のデータが来たときに意図的に例外を発生させる

# def currency_of(country)
#   case country
#   when :japan
#     "yen"
#   when :us
#     "dollar"
#   when :india
#     "rupee"
#   else
#     # 意図的に例外を発生させる
#     raise "無効な国名です。#{country}" # 文字列がエラーメッセージになる
#   end
# end

# currency_of(:japan)
# currency_of(:italy)

# [taku_enginner@DESKTOP-VI1F9G6:chapter9(master)] $ ruby text.rb 
# text.rb:13:in `currency_of': 無効な国名です。italy (RuntimeError)
#         from text.rb:18:in `<main>'

# raiseメソッドに文字列だけを渡したときはRuntimeErrorクラスの例外が発生する。
# 第一引数に例外クラス、第二引数にエラーメッセージを渡すと、RuntimeErrorクラス以外の例外クラスを発生させることができる。
# def currency_of(country)
#   case country
#   when :japan
#     "yen"
#   when :us
#     "dollar"
#   when :india
#     "rupee"
#   else
#     # 意図的に例外を発生させる
#     raise ArgumentError, "無効な国名です。#{country}" # 文字列がエラーメッセージになる
#   end
# end

# currency_of(:japan)
# currency_of(:italy)


# raiseメソッドに例外クラスのインスタンスを渡す方法もある
def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  when :india
    "rupee"
  else
    # raiseメソッドに例外クラスのインスタンスを渡す
    raise ArgumentError.new("無効な国名です。#{country}")  # 文字列がエラーメッセージになる
  end
end

currency_of(:japan)
currency_of(:italy)

# メッセージ省略はデバッグがしにくくなるため通常は避けるべき。