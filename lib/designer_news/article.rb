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
      articles << self.scrape_smash
   
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
    
    def self.scrape_smash
      smash_url = "smashingmagazine.com"
      doc = Nokogiri::HTML(open("https://www.smashingmagazine.com"))
      
      article = self.new 
      article.title = doc.search("h2.featured-article__title").first.text
      article.name = doc.search("p.featured-article__intro").first.text
      article.url = smash_url + doc.search("h2 a").first.attr("href")
      article.date = true 
      
      #binding.pry
      article
    end
    
  end
  
  



  # Go to Designer News, get article, get properties, URL
  # Go to Another Design Site, get article, get properties, show URL
