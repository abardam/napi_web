class PageController < ApplicationController

  def home
    @parent = "home"
    @current = "home"
  end

  def about
    @parent = "about"
    @current = "about"
  end

  def updates
    @parent = "contact"
    @current = "updates"
  end

  def application
    @parent = "application"
    @current = "application"
  end

  def travel
    @parent = "travel"
    @current = "travel"
  end

  def contact
    @parent = "contact"
    @current = "contact"
  end
  
  def laboratories
    @parent = "application"
    @current = "laboratories"
  end
  
  def beginning
    @parent = "about"
    @current = "beginning"
    render 'default.html.erb'
  end
  
  def past
    @parent = "about"
    @current = "past"
    render 'default.html.erb'
  end
  
  def guidelines
    @parent = "application"
    @current = "guidelines"
    render 'default.html.erb'
  end
  
  def inquiry
    @parent = "contact"
    @current = "inquiry"
    render 'default.html.erb'
  end
  
  def post
    @parent = "post"
    @current = "post"
    render 'default.html.erb'
  end
  
  def faq
    @parent = "faq"
    @current = "faq"
    render 'default.html.erb'
  end
  
  def download
    @parent = "application"
    @current = "download"
    render 'default.html.erb'
  end
  
  def images
    if params[:page]
      @page = params[:page].to_i
    else
      @page = 1
    end
    
    if @page < 1
      @page = 1
    end
    
  end
end
