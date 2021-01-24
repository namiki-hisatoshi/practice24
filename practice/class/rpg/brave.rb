class Brave < Character
  def attack(monster)
    damage = (offense - monster.defense) / 2
    damage = 0 if damage < 0
    monster.hp = monster.hp - damage
    monster.hp = 0 if monster.hp < 0
    puts "#{name}の攻撃！"
    if damage == 0
      puts "#{monster.name}に攻撃が効いていない！"
    else
      puts "#{monster.name}に#{damage}のダメージを与えた！"
    end
  end
end
