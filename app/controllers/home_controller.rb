class HomeController < ApplicationController
  def index
  end

  def new
  	@home=Home.new
  end

  def edit


  	@home=Home.find(params[:id])

  end

  def show
   @home=Home.all
  end
  
  def create
 
  @home=Home.new(params[:home])

  fn=@home.filename
  ct=@home.content_type
  bd=@home.binary_data
  it=@home.imgtype



  	if @home.save
  	homeid=@home[:id]
  	  @hoid=session[:homeid]
  	  e = Photos.create(:hid => homeid, :content_type => ct,:binary_data => bd,:filename => fn,:imgtype =>it)
  		
  		redirect_to :controller => 'home' ,:action =>'index'
  	else
  		flash[:notice] ="does not save"
  	end
  end
  

  def update

  	@home=Home.find(params[:id])


  	if @home.update_attributes(params[:home])

  		redirect_to :controller => "home" ,:action => 'show'
  	else
  		flash[:notice] ="does not save"

  	end

  end
def destroy

	@home=Home.find(params[:id])
	
	if @home.destroy
		redirect_to :controller => 'home' ,:action =>'show'
		flash[:notice] ="Deleted "
	else
	end
	
end



end
