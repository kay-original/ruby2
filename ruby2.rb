def janken
  rsp = ["グー","チョキ","パー"]
  enemy = rand(3)
  direction = ["上","下","左","右"]
  enemy_direction = rand(4)
  puts "じゃんけん。。。"
  puts "0(グー) 1(チョキ) 2(パー)"
  you = gets.to_i
  if you == 0 || you == 1 || you == 2
    puts "ほいっ！"
    puts "------------------"
    puts "あなたは#{rsp[you]}を出しました"
    puts "相手は#{rsp[enemy]}を出しました"
    puts "------------------"
  else
    puts "もう一度やり直してください"
    return
  end
  if rsp[enemy] == rsp[you]
    puts "あいこです"
    puts "------------------"
    janken
  else 
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    you_direction = gets.to_i
    if you_direction == 0 || you_direction == 1 ||you_direction == 2 || you_direction == 3
      puts "ほいっ！"
      puts "----------------"
      puts "あなたは#{direction[you_direction]}を選択"
      puts "相手は#{direction[enemy_direction]}を選択"
      puts "------------------"
      if direction[you_direction] == direction[enemy_direction]
        puts "勝負あり！！！"
      else
        janken
      end
    else
      puts "もう一度やり直してください"
      return
    end
  end
end
janken
