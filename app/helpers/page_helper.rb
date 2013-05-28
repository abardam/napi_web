module PageHelper
  def footer_images
    (Dir.entries("./app/assets/images/footer") - [".", ".."]).shuffle[0..3]
  end
  
  def name_list
    ["home", "about", "updates", "application", "travel", "contact"]
  end
  
  def load_post(name)
    post = Content.where("title = ?", name).first
    return post.post if post
    return "Hey, i think you forgot to add content for #{name}!"
  end
end
