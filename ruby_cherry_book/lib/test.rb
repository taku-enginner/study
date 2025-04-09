# パターンマッチのコード例。case文によく似ているがwhenではなくinを使用している点に注目
ans = case [0,1,2]
  in[n,1,2]
    "n = #{n}"
  else
    "not matched"
end

puts ans