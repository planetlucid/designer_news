# Our CLI Controller

class DesignerNews::CLI
  
  def call
    puts "Today's Designer News:"
    list_posts
  end
  
  def list_posts
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts <<-DOC
    1. first item title
    2. second item title
  DOC
  end
end