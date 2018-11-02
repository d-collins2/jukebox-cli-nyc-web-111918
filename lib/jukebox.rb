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
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif list(songs).include?(input)
    puts "Playing #{songs[input - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 


def list(songs)
   songs.each_with_index{|song, i| puts"#{i}. #{song}"}
end

def exit_jukebox 
  puts "Goodbye"
end 

def run(my_songs)
  help 
  puts "Please enter a command:"
  command = gets.chomp
  loop do 
    case command
      when "help"
        help
        puts "Please enter a command:"
        command = gets.chomp
      when "list"
        list(my_songs)
        puts "Please enter a command:"
        command = gets.chomp
      when "play"
        play(my_songs)
        puts "Please enter a command:"
        command = gets.chomp
      when "exit"
        exit_jukebox
        break 
      else
        puts "Invalid input, please try again:"
        command = gets.chomp
      end
    end
end 