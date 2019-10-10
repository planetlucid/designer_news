# Our CLI Controller

class DesignerNews::CLI
  
 def call
    list_items
    menu
    goodbye
  end
  
  def list_items
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts "Today's Designer News:"
    puts <<-DOC
    1. first item title
    2. second item title
  DOC
  end
  
  def menu
    input = nil 
    while input !="exit"
      puts "Enter the number of the item you'd like to read, type list to see the list, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Read Article 1..."
      when "2"
        puts "Read Article 2..."
      when "list" 
        list_items
      end
    end
  end
  
  def goodbye
    puts "See you tomorrow for more articles."
  end
end