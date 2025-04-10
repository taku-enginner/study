# **でハッシュを展開させる
h = { ud: "dollar", india: "rupee"}
#変数hの要素を**で展開させる
ans = {japan: "yen", **h}
p ans

# [taku_enginner@DESKTOP-VI1F9G6:ruby_cherry_book(master)] $ ruby chapter5.rb
# {:japan=>"yen", :ud=>"dollar", :india=>"rupee"}

# **をつけない場合は構文エラーになる
ans = {japan: "yen", h}
p ans

# [taku_enginner@DESKTOP-VI1F9G6:ruby_cherry_book(master)] $ ruby chapter5.rb
# chapter5.rb:8: syntax error, unexpected '}', expecting =>
# ans = {japan: "yen", h}