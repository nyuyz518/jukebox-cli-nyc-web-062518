require "pry"
class Jukebox
  
  songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
    puts "help - get a list of commands"
    puts "list - get a list of all the songs"
    puts "play - play a song"
    puts "exit - exit the jukebox"
end


def list 
  songs.each_with_index do |index, song|
    puts "#{index + 1}.  #{song}"
  end
end

def play (song)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run
  puts "Please enter a command:"
  user_commend = gets.chomp
   unless user_commend = "exit"
     help
     list
     play
   else
     exit_jukebox
   end
end
