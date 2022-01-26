
def rock_paper_scissors()
  puts "じゃんけん..."
  puts "0（グー）1（チョキ）2（パー）3（戦わない）"

  $number = gets.to_s.chomp
  if $number == "0"
    puts "あなた：グー"
  elsif $number == "1"
    puts "あなた：チョキ"
  elsif $number == "2"
    puts "あなた：パー"
  elsif $number == "3"
    puts "あなた：ジャンケンをやめました"
  else 
    puts "0〜3の数字を選択してください"
  end
   
  if $number == "0" || $number == "1" || $number == "2"
    opponent_number = rand(0..2).to_s
    if opponent_number == "0"
      puts "あいて：グー"
    elsif opponent_number == "1"
      puts "あいて：チョキ"
    else 
      puts "あいて：パー"
    end
  elsif $number == "3"
    puts "あいて：またジャンケンしましょう！"
  else
    puts "やり直しです"
  end
 
  if opponent_number == $number
    puts "あいこです"
    $case_pattern = "draw"
  elsif (opponent_number == "0" && $number == "2") || (opponent_number == "1" && $number == "0") || (opponent_number == "2" && $number == "1")
    puts "あなたの勝ちです"
    $case_pattern = "win"
  elsif (opponent_number == "0" && $number == "1") || (opponent_number == "1" && $number == "2") || (opponent_number == "2" && $number == "0")
    puts "あなたの負けです"
    $case_pattern = "lose"
  elsif $number == "3"
    $case_pattern = "quit"
  else
    $case_pattern = "mistake"
  end
end

def finger_pointing_game()
  puts "あっち向いて..."
  puts "0（上）1（右）2（下）3（左）"
  $your_finger_or_face = gets.to_s.chomp
  if $your_finger_or_face == "0"
    puts "あなた：上"
  elsif $your_finger_or_face == "1"
    puts "あなた：右"
  elsif $your_finger_or_face == "2"
    puts "あなた：下"
  elsif $your_finger_or_face == "3"
    puts "あなた：左"
  else
    puts "0〜3の数字を選択してください"
  end
    
  $opponent_finger_or_face = rand(0..3).to_s
  if $opponent_finger_or_face == "0"
    puts "あいて：上"
  elsif $opponent_finger_or_face == "1"
    puts "あいて：右"
  elsif $opponent_finger_or_face == "2"
    puts "あいて：下"
  else 
    puts "あいて：左"
  end
  
  if ($your_finger_or_face == $opponent_finger_or_face) && ($case_pattern == "win")
    puts "あなたの勝ちです"
    $finger_pointing_game_pattern = "finish"
  elsif ($your_finger_or_face == $opponent_finger_or_face) && ($case_pattern == "lose")
    puts "あなたの負けです"  
    $finger_pointing_game_pattern = "finish"
  end
end

loop do 
  rock_paper_scissors()
  puts $case_pattern
  puts "____________________________"

  case $case_pattern
  when "win"
    finger_pointing_game()
    puts "____________________________"
  when "lose"
    finger_pointing_game()
    puts "____________________________"
  when "draw"
    rock_paper_scissors()
    puts "____________________________"
  when "mistake"
    rock_paper_scissors()
    puts "____________________________"
  end
  if ($finger_pointing_game_pattern == "finish") || ($number == "3")
    break
  end
end
    
    
        

    