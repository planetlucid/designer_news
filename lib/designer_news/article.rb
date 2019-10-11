class DesignerNews::Article  
 attr_accessor :title, :name, :date, :url
 
  def self.today
    
    # Scrape Designer News and UxDesign and then return articles based on data
    # DesignerNews::ArticleScraper.new 
    self.scrape_articles
  
  end
    
  def self.scrape_articles  
      articles = []
      articles << self.scrape_dn
      articles
  end
  
  def self.scrape_dn
    doc = Nokogiri::HTML(open("http://designernews.co"))
  
end



      # article_1 = self.new 
      # article_1.title = "Article Title 1"
      # article_1.name = "Article Author 1"
      # article_1.date = "Article Date 1"
      # article_1.url = "http://designernews.co"
      
      # article_2 = self.new 
      # article_2.title = "Article Title 2"
      # article_2.name = "Article Author 2"
      # article_2.date = "Article Date 2"
      # article_2.url = "https://uxdesign.cc/"
      # [article_1, article_2]
  
     
      # Go to Designer News, get article, get properties, show article
      # Go to UX Design, get article, get properties, show article
