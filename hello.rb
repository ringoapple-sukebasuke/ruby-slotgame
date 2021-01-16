def slotgame
puts '--------------'

all_coin = 100
point = 0

puts "残りコイン数#{all_coin}"
puts "ポイント#{point}"


puts "何コイン入れますか？"
puts "0(10コイン)1(30コイン)2(50コイン)3(やめとく)"

use_coin = gets.to_i
coins = [10, 30, 50, "やめとく"]

if use_coin == 3
    puts "また遊んでね"
  return false
end

puts '--------------'
puts "エンターを3回押しましょう！"
  num1 = rand(7..9)
  num2 = rand(7..9)
  num3 = rand(7..9)
  num4 = rand(7..9)
  num5 = rand(7..9)
  num6 = rand(7..9)
  num7 = rand(7..9)
  num8 = rand(7..9)
  num9 = rand(7..9)
 
  push = gets
  puts "-------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  push = gets
  puts "-------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  push = gets
  puts "-------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  
  puts "-------------"
  
  if num2 == 7 && num5 == 7 && num8 == 7
    puts "真ん中に７が揃いました！"
    puts "500ポイント獲得！"
    puts "100コイン獲得！"
    
    puts "-------------"
    
    coin = all_coin + 100 - coins[use_coin]
    point = point + 500
    
    puts "残りコイン数#{coin}"
    puts "ポイント#{point}"
    
    
  elsif num2 == num5 && num5 == num8
    puts "真ん中に同じ数字が揃いました！"
    puts "250ポイント獲得！"
    puts "50コイン獲得！"
     
    puts "-------------"
    
    coin = all_coin + 50 - coins[use_coin]
    point = point + 250
    
    puts "残りコイン数#{coin}"
    puts "ポイント#{point}"
  
  else
    puts "残念でした"
    
    coin = all_coin - coins[use_coin]
    
    puts "残りコイン数#{coin}"
    puts "ポイント#{point}"
  end
  
  puts "1(再BETする)2(終了する)"
  select_number = gets.to_i
  
  if coin >= 10 && select_number == 1
    return true
  else
    puts "終了しました"
    return false
  end
  
end

next_game = true

  while next_game do 
    next_game = slotgame
  end