# passing_block.rb

def take_block(&block)
    block.call
  end
  
  take_block do
    puts "Block being called in the method!"
  end


def take_block_with_argument(number, &block)
    block.call(number)
  end
  
  number = 42
  take_block_with_argument(number) do |num|
    puts "Block being called in the method! #{num}"
  end
  

  #Proc Example
  talk = Proc.new do |name|
    puts "I am talking to #{name}."
  end
  
  talk.call "arslan"

  #Proc in method
  def take_proc(proc)
    [1, 2, 3, 4, 5].each do |number|
      proc.call number
    end
  end
  
  proc = Proc.new do |number|
    puts "#{number}. Proc being called in the method!"
  end
  
  take_proc(proc)