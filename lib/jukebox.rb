require "pry"

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


def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}.  #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i-1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run
  input = ""
  puts "Please enter a command:"
  user_commend = gets.chomp
  
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when input == "help"
      help
    when input == 'exit'
      exit_jukebox
end 

  
end
