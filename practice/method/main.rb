require './method'

plans =[
  {place: "沖縄", price:10000},
  {place: "北海道", price:20000},
  {place: "九州", price:15000}
]

# 目次
# プランを表示する
disp_plan(plans)
# プランを選択する
chosen_plan = choose_plan(plans)
# 人数を選択する
chosen_num_of_people = choose_num_of_people(chosen_plan)
# 合計金額を計算する
calculate_total_price(chosen_plan, chosen_num_of_people)
