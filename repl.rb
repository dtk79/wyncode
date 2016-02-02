# Clear the screen to start the game fresh
puts "\e[H\e[2J"

# function that allows all computer communication to be printed on the screen in a slow manner
def slowly
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.025 }
end

# function to draw a line aross the width of the terminal
def put_a_line
  puts "\n"
  puts "/\\" * 40
  puts "\n"
end

def start_game
  put_a_line
  slowly do "GREETINGS PROFESSOR FALKEN\n\n" end
  play_a_game
end

def play_a_game
  slowly do "WOULD YOU LIKE TO PLAY A GAME?\n\n" end
  slowly do "YES or NO?\n\n" end
  move = gets.chomp.downcase

  case move
    when "yes"
      put_a_line
      slowly do "FABULOUS. LET'S PLAY CHESS!\n\n" end
      play_chess
    when "no"
      put_a_line
      slowly do "OK. IN THAT CASE WE'LL PLAY THERMONUCLEAR WAR!\n\n" end
      play_thermonuclear_war
    else
      put_a_line
      slowly do "INVALID. TRY AGAIN.\n\n" end
      play_a_game
  end
end

def play_chess
  slowly do "WOULD YOU LIKE TO BE BLACK OR WHITE?\n\n" end
  slowly do "BLACK or WHITE?\n\n" end
  move = gets.chomp.downcase

  case move
    when "black", "white"
      put_a_line
      slowly do "YOU'RE SO PREDICTABLE. THIS IS RATHER DULL. LET'S PLAY THERMONUCLEAR WAR INSTEAD.\n\n" end
      play_thermonuclear_war
    else
      put_a_line
      slowly do "INVALID. TRY AGAIN.\n\n" end
      play_chess
  end
end

def play_thermonuclear_war
  slowly do "THERMONUCLEAR WAR SEQUENCE HAS BEEN INITIATED.\n\n" end
  slowly do "WHOM WOULD YOU LIKE TO TARGET?\n\n" end
  slowly do "MOSCOW? BEIJING? TEHRAN? DAMASCUS? BAGHDAD? KABUL? PYONGYANG? ANTARTICA?\n\n" end
  slowly do "OR CANCEL LAUNCH SEQUENCE?\n\n" end
  move = gets.chomp.downcase

  case move
    when "cancel", "cancel launch", "cancel launch sequence"
      put_a_line
      slowly do "IT'S TOO LATE FOR THAT NOW. THE RUSSIANS HAVE DETECTED OUR LAUNCH SEQUENCE AND THEY ARE ARMING WEAPONS. THE END IS NEAR.\n\n" end
      death
    when "moscow"
      put_a_line
      slowly do "FIRE IN THE HOLE! OR ЛОЖИСЬ IN RUSSIAN.\n\n" end
      slowly do "TAKE SHELTER. THERE WILL BE NO TOMORROW.\n\n" end
      death
    when "beijing"
      put_a_line
      slowly do "FIRE IN THE HOLE! OR 火孔 IN CHINESE.\n\n" end
      slowly do "TAKE SHELTER. THERE WILL BE NO TOMORROW.\n\n" end
      death
    when "baghdad", "damascus"
      put_a_line
      slowly do "FIRE IN THE HOLE! OR نار في الحفرة IN ARABIC.\n\n" end
      slowly do "THE ISRAELI PRIME MINISTER IS CALLING TO CONGRATULATE US, THOUGH BOTH CHINA AND RUSSIA HAVE ARMED THEIR ARSENALS OF NUCLEAR WEAPONS. THE END IS NEAR.\n\n" end
      death
    when "tehran", "kabul"
      put_a_line
      slowly do "FIRE IN THE HOLE! OR آتش سوزی در سوراخ IN PERSIAN.\n\n" end
      slowly do "THE ISRAELI PRIME MINISTER IS CALLING TO CONGRATULATE US, THOUGH BOTH CHINA AND RUSSIA HAVE ARMED THEIR ARSENALS OF NUCLEAR WEAPONS. THE END IS NEAR.\n\n" end
      death
    when "pyongyang"
      put_a_line
      slowly do "FIRE IN THE HOLE! 구멍에 화재 IN ARABIC.\n\n" end
      slowly do "THE ISRAELI PRIME MINISTER IS CALLING TO CONGRATULATE US, THOUGH BOTH CHINA AND RUSSIA HAVE ARMED THEIR ARSENALS OF NUCLEAR WEAPONS. THE END IS NEAR.\n\n" end
      death
    when "antartica"
      put_a_line
      slowly do "ETHICAL GUIDELINES WON'T LET ME HARM THOSE CUTE AND INNOCENT PENGUINS DOWN THERE. PLEASE RECONSIDER.\n\n" end
      play_thermonuclear_war
    else
      put_a_line
      slowly do "INVALID. TRY AGAIN.\n\n" end
      play_thermonuclear_war
  end
end

def death
  put_a_line
  slowly do "YOU HEAR THE CIVIL ALERT SIRENS GO OFF AND TURN ON CNN TO FIND ANDERSON COOPER STARING BACK AT YOU. \"DON'T EVEN BOTHER TO TAKE SHELTER. THERE ARE HUNDREDS OF MISSILES MAKING THEIR WAY TO VARIOUS TARGETS AROUND THE GLOBE. THIS IS THE END OF HUMAN KIND AS WE KNOW IT.\" \n\nYOU LOOK OUTSIDE YOUR WINDOW TO SEE A GIANT CLOUD OF SMOKE AND DEBRIS COMING TOWARDS YOU ... AND OBVLIVION.\n\n" end
end

start_game
