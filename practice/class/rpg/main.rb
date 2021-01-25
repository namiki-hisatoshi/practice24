require "./character"
require "./brave"
require "./monster"

MONSTER_LIST = [
  {name: "スライム", hp: 38, offense: 12, defense: 19},
  {name: "メタルスライム", hp: 50, offense: 30, defense: 29},
  {name: "キングスライム", hp: 100, offense: 59, defense: 49},
  {name: "シドー", hp: 200, offense: 180, defense: 90},
  {name: "ゾーマ", hp: 300, offense: 321, defense: 145},
]

brave = Brave.new(name: "勇者", hp: 210, offense: 180, defense: 100)
monster = Monster.new(MONSTER_LIST.sample)
puts "#{monster.name}があらわれた！"

while brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  if monster.hp > 0
    monster.attack(brave)
    puts <<~TEXT
    ========================
    【#{brave.name}】 HP: #{brave.hp}
    【#{monster.name}】 HP: #{monster.hp}
    ========================
    TEXT
  else
    puts <<~TEXT
    ========================
    【#{brave.name}】 HP: #{brave.hp}
    【#{monster.name}】 HP: #{monster.hp}
    ========================
    TEXT
  end
end

if monster.hp == 0
  puts "#{monster.name}をやっつけた！"
else
  puts "#{brave.name}は死んでしまった！"
end
