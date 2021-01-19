puts "旅行プランを選択してください"

puts <<~TEXT
  1. 沖縄旅行(10000円)
  2. 北海道旅行(20000円)
  3. 九州旅行(15000円)
TEXT

sum = 0
while true
  print "プラン番号を選択 > "
  plan_num = gets.to_i
  break if plan_num == 1 or 2 or 3
    puts "1~3の番号を入力してください。"
end
case plan_num
  when 1
    sum += 10000
    plan_name = "沖縄旅行"
  when 2
    sum += 20000
    plan_name = "北海道旅行"
  when 3
    sum += 15000
    plan_name = "九州旅行"
end
puts "#{plan_name}ですね。"

puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  number_of_people = gets.to_i
  break if(number_of_people.to_i > 0)
    puts "1以上を入力してください。"
  end
puts "#{number_of_people}名ですね。"

total_price = sum * number_of_people
if number_of_people >= 5
  total_price *= 0.9
  puts "5名以上ですので10%割引となります"
end
puts "合計金額は#{total_price.floor}円になります。"
