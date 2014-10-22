
class MontersController < ApplicationController


http_basic_authenticate_with :name => "adm", :password => "111", :except => [:index, :show]

def new
end

def create
	@monter = Monter.new(params[:monter])
 
  if @monter.save
	redirect_to :action => :show, :id => @monter.id
  else
    render 'new'
  end
end

def edit
  @monter = Monter.find(params[:id])
end

def show
  @monter = Monter.find(params[:id])
end

def index
  @monters = Monter.all
end

def update
  @monter = Monter.find(params[:id])
 
  if @monter.update_attributes(params[:monter])
    redirect_to :action => :show, :id => @monter.id
  else
    render 'edit'
  end
end

def destroy
  @monter = Monter.find(params[:id])
  @monter.destroy
 
  redirect_to :action => :index
end


end
