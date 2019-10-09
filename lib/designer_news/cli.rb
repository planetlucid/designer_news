# Our CLI Controller

class DesignerNews::CLI
  
  def call
    list_items
    menu
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
    puts "Enter the number of the item you'd like to read:"
  end
end