# when節の後ろにはthenを入れることもできる
# thenを入れるとwhen節と条件が真だった場合の処理を1行で書けるが、使用頻度は高くない
country = "italy"
greeting = case country
when "japan" then "こんにちは"
when "us" then "hello"
when "italy" then "ciao"
else "???"
end

puts greeting