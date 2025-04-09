# TypeErrorクラスの例外を発生
# 2行目が例外が発生した場所を示す
# 3行目以降はメソッドの呼び出し履歴（バックトレース、スタックトレースという）

# irb(main):001:0> 1 + "10"
# (irb):1:in `+': String can't be coerced into Integer (TypeError)
#         from (irb):1:in `<main>'
#         from /home/taku_enginner/.rbenv/versions/3.0.1/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
#         from /home/taku_enginner/.rbenv/versions/3.0.1/bin/irb:23:in `load'
#         from /home/taku_enginner/.rbenv/versions/3.0.1/bin/irb:23:in `<main>'

puts "Start."
1 + "10"
# 上の行で例外が発生するため、ここから下は実行されない
puts "End."

# Start.
# text.rb:13:in `+': String can't be coerced into Integer (TypeError)
#         from text.rb:13:in `<main>'