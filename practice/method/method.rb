# 本編
# プランを表示する
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:name]}旅行 (#{plan[:price]}円)"
  end
  plans
end
# プランを選択する
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan = gets.to_i
    break if(1..3).include?(select_plan)
    puts "1~3の番号を入力して下さい。"
  end
  plans[select_plan - 1]
end
# 人数を選択する
def choose_num_of_people(chosen_plan)
  puts "#{chosen_plan[:name]}旅行ですね。何名で予約されますか？"
  print "人数を入力 > "
    while true
      select_num = gets.to_i
      break if(select_num > 0)
      puts "1以上を入力して下さい。"
    end
  select_num
end
# 合計金額を計算する
def calculate_total_price(chosen_plan, chosen_num_of_people)
  puts "#{chosen_num_of_people}名ですね。"
  total_price = chosen_plan[:price] * chosen_num_of_people
  if chosen_num_of_people >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
