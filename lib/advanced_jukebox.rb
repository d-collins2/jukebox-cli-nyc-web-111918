#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
 puts "Please enter a song name:"
  user_response = gets.chomp
  my_songs.each { |song, location|
    if user_response == song
      system 'open ' + location
    end
      }
  if user_response == "list"
    list(my_songs)
    play(my_songs)
  else
    puts "Invalid input, please try again:"
    play(my_songs)
  end
end 


def list(songs)
   my_songs.each { |song, location|
    puts song
    }
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
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
