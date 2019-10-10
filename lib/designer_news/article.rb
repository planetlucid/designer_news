class DesignerNews::Article  
 
  def self.today
   # Should show articles. 
      puts <<-DOC.gsub /^\s*/,''
      1. first item title.
      2. second item title.
    DOC
  
  end
  
end