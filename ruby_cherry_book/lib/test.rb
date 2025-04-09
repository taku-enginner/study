status = "error"

# unlessを無理に使わなくてもよい
message = if status != "ok"
  "何か異常があります"
end

puts message