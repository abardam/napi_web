class ContentsController < ApplicationController
  layout 'scaffold'
  # GET /contents
  # GET /contents.json
  def index
    if !session[:userid]
      render '_login.html.erb' and return
    end
  
    @contents = Content.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    if !session[:userid]
      render '_login.html.erb' and return
    end
  
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.json
  def new
    if !session[:userid]
      render '_login.html.erb' and return
    end
    
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    if !session[:userid]
      render '_login.html.erb' and return
    end
    
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
  def create
    if !session[:userid]
      render '_login.html.erb' and return
    end
    
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.json
  def update
    if !session[:userid]
      render '_login.html.erb' and return
    end
    
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    if !session[:userid]
      render '_login.html.erb' and return
    end
    
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url }
      format.json { head :no_content }
    end
  end
  
  def login
    user = User.where("username = ?", params[:username]).first
    if user.password == params[:password]
      session[:userid] = user.id
      redirect_to :action => :index and return
    end
    
    render '_login.html.erb'
    end
end
