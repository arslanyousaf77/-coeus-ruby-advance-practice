def find(word)
    if /lab/ =~ word
      puts "Matched Word: #{word}"
    else
      puts "No match"
    end
  end
  
  
  find("laboratory")
  find("experiment")
  find("Pans Labyrinth")
  find("elaborate")
  find("polar bear")
  