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
      
      # Go to Designer News, get article, get properties, show article
      # Go to UX Design, get article, get properties, show article
      
      articles
  end
  
  def self.scrape_dn
      doc = Nokogiri::HTML(open("https://www.designernews.co/"))
    
      article = self.new 
      article.title = doc.search("a.montana-item-title").first.text
      article.name = doc.search("div.montana-item-meta span a").first.text
      article.url = doc.search("a.montana-item-title").first.attr("href")
      article.date = true 
      
      article
      
    end
    
  end




  
     

