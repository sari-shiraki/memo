require "csv"

puts "1(新規でメモを作成)２（既存のメモを編集する）"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets
  CSV.open("#{file_name}.csv", "w") do |test|
    p "メモしたい内容を記入してください"
    p "完了したらCtrl + Dを押します"
    memo = gets
    test << ["#{memo}"]
  end
elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets
  CSV.open("#{file_name}.csv", 'a') do |test|
    p "編集内容を記入してください"
    p "完了したらCtrl + Dを押します" 
    memo = gets
    test << ["#{memo}"]
  end
end