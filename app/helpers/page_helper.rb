module PageHelper
  def footer_images
    (Dir.entries("./app/assets/images/footer") - [".", ".."]).shuffle[0..3]
  end
  
  def name_list
    [{:home => "Home"},
      {:about=> "History", :beginning=>"How it started", :past=>"Past internships"},
      {:application=>"Application",:guidelines=>"Guidelines", :laboratories=>"Laboratories", :download=>"Downloads"},
      {:travel=>"Travel"},
      {:post=>"Post internship"},
      {:faq=>"FAQ"},
      {:contact=>"Contact", :inquiry=>"Send an inquiry"}
    ]
  end
  
  def load_post(name)
    post = Content.where("title = ?", name).first
    return BlueCloth.new(post.post).to_html if post
    return "Hey, i think you forgot to add content for #{name}!"
  end
end
