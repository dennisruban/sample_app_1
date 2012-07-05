module ApplicationHelper

def logo
  
  # Fill in.
  
end

# Return a title on a per-page basis.
def title 
  base_title = "Ruby on Rails Sample App 1"
  
  if @title.nil?
    
    base_title
    
  else
    
    "#{base_title} | #{@title}"
    
    end 
    
    def logo
      image_tag("logo.png", :alt => "Sample App 1", :class => "round")
    end
  end
end