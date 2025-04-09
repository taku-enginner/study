# 1つのオブジェクトや式を複数の値と比較する場合
# elsifを重ねるより、caseで書いた方がシンプル。

country = "italy"

# if文を使う場合
greeting = 
  if country == "japan"
    "こんにちは"
  elsif country == "us"
    "hello"
  elsif country == "italy"
    "ciao"
  else
    "???"
  end

puts greeting

# case文を使う場合
greeting = case country
when "japan"
  "こんにちは"
when "us"
  "hello"
when "italy"
  "ciao"
else
  "???"
end
puts greeting