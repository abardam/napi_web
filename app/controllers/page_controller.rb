class PageController < ApplicationController

  def home
    @current = "home"
  end

  def about
    @current = "about"
  end

  def updates
    @current = "updates"
  end

  def application
    @current = "application"
  end

  def travel
    @current = "travel"
  end

  def contact
    @current = "contact"
  end
  
  def laboratories
    @current = "laboratories"
  end
end
