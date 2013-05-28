module PageHelper
  def footer_images
    (Dir.entries("./app/assets/images/footer") - [".", ".."]).shuffle[0..3]
  end
  
  def name_list
    ["home", "about", "updates", "application", "travel", "contact"]
  end
  
  def load_post(name)
    Content.where("title = ?", name)[0].post
  end
end
