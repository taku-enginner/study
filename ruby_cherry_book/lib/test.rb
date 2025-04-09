# case文でwhen説に複数の値を指定し、どれかに一致すれば処理を実行する

country = "アメリカ"
greeting = case country
when "japan", "日本"
  "こんにちは"
when "us", "アメリカ"
  "hello"
when "italy", "イタリア"
  "ciao"
else
  "???"
end

puts greeting

# case節の式を省略すると、条件式が最初に真になるwhen節の処理が実行される
country = "italy"

# case節の式を省略し、when節の条件式を順に評価するcase文
greeting = case
when country == "japan"
  "こんにちは"
when country == "us"
  "hello"
when country == "italy"
  "ciao"
else
  "???"
end
puts greeting