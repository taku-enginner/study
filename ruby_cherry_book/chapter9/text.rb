# 例外処理の対象範囲と対象クラスを極力絞り込む
# 例外処理は、例外が発生しそうな箇所と該当クラスをあらかじめ予想し、その予想を例外処理のコードに反映させていく。
# 補足範囲が広すぎるのは、本来異常終了扱いにすべき例外まで続行可能な例外として扱われる恐れがある。

require "date"

# 令和の日付文字列Dateオブジェクトに変換する
def convert_reiwa_to_date(reiwa_text)
  begin
    m = reiwa_text.match(~~~)
    year = m[:jp_year].to_i + 2018
    month = m[:month].to_i
    day = m[:day].to_i
    day = m[:day].to_i
    Date.new(year, month, day)
  rescue
    # 例外が起きたら（＝無効な日付が渡されたら）nilを返したい
    nil
  end
end

# 上記だと令和3年99月99日のような無効な日付をキャッチしたいが、メソッド実行中に発生した例外をすべてのみ込んでnilを返してしまう。
# 自分の書いたコードにタイプミスのような不具合があってもnilが返る。