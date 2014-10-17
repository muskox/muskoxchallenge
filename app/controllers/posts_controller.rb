class PostsController < ApplicationController

  #def new
  #  # check if current user exists, this donesn't do it 
  #  @user = @current_user
  #end
  
  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id

    #Events
    @post.event_id = 1

    # Dealing with checkboxes
    if params[:post][:workout].nil?
      @post.workout = 0
    end 
    if params[:post][:mobilize].nil?
      @post.mobilize = 0
    end
    if params[:post][:supplement].nil?
      @post.supplement = 0
    end
    if params[:post][:lifestyle].nil?
      @post.lifestyle = 0
    end
    @post.save
    redirect_to :controller => 'data', :action => 'index'
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end

end
