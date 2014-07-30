class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show 
    @i = Idea.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    i = Idea.new
    i.name = params['name']
    i.description = params['description']
    i.save
    redirect_to "/idea/#{i.id}"
  end
  
  
  def edit
    @i = Idea.find_by_id(params['id'])
  end
  
  def update
    i = Idea.find_by_id(params['id'])
    i.name = params['name']
    i.description = params ['description']
    i.save
    redirect_to "/idea/#{p.id}"
  end
  
  def destroy
    i = Idea.find_by_id(params['id'])
    i.destroy
  end
  
  def index
    @i = Idea.all
  end
  
  
end
