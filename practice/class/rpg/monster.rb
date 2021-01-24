class Monster < Character
  def attack(brave)
    damage = (offense - brave.defense) / 2
    damage = 0 if damage < 0
    brave.hp = brave.hp - damage
    brave.hp = 0 if brave.hp < 0
    puts "#{name}の攻撃！"
    if damage == 0
      puts "#{brave.name}は無傷のようだ！"
    else
      puts "#{brave.name}に#{damage}のダメージを与えた！"
    end
  end
end
