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
    @articles = DesignerNews::Article.today
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.title} - #{article.name} - #{article.date} - #{article.url}"
    end
  end
  
  def menu
    input = nil 
    while input !="exit"
      puts "Enter the number of the item you'd like to read, type list to see the list, or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        the_article = @articles[input.to_i-1]
        puts "#{the_article.title} - #{the_article.name} - #{the_article.date} - #{the_article.url}"
      elsif input == "list"
        list_items
      elsif input != "exit"
        puts "No Bueno. Type 1, 2, list, or exit"
      end
    end
  end
  
  def goodbye
    puts "See you tomorrow for more articles."
  end
end