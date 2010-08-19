module ApplicationHelper
  #Return a title on a per-page basis
  def title
    base_title = "Peep Community"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  #Return logo
  def logo
    image_tag("logo.png", :alt => "Peep Community", :class => "round")
  end
end
