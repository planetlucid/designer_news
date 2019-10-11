class DesignerNews::Article  
 attr_accessor :title, :name, :date, :url
 
  def self.today
    # Should show articles. 
    # puts <<-DOC.gsub /^\s*/,''
    #   1. first item title.
    #   2. second item title.
    # DOC
  
  article_1 = self.new 
  article_1.title = "Article Title 1"
  article_1.name = "Article Author 1"
  article_1.date = "Article Date 1"
  article_1.url = "http://designernews.co"
  
  article_2 = self.new 
  article_2.title = "Article Title 2"
  article_2.name = "Article Author 2"
  article_2.date = "Article Date 2"
  article_2.url = "https://uxdesign.cc/"
  
  [article_1, article_2]
  end
  
end