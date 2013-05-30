module ContentsHelper
  def post_limit(post)
    splpost = post.split
    topost = splpost[0..5]
    return post if splpost.length <= 5
    return topost.join(" ")+"..."
  end
  
  def read_post(name)
    BlueCloth.new(name).to_html
  end
end
