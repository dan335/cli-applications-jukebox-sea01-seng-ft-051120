def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  song = nil
  
  songs.each_with_index do |s, i|
    if i == Integer(input)
      song = s
    elsif input == s
      song = s
    end
  end
  
  if song == nil
    puts "Invalid input, please try again"
  else
    puts "Playing #{song}"
  end
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  
  isRunning = true
  
  while isRunning do
    input = gets.strip
    
    if input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "exit"
      exit_jukebox
      isRunning = false
    end
  end
end