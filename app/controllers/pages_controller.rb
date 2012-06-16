class PagesController < ApplicationController
def new
  @post = User.new

  respond_to do |format|
    format.html # new.html.erb
    format.xml  { render :xml => @post }
  end
end

 def create
  @post = User.new(params[:post])

  respond_to do |format|
    if @post.save
      flash[:notice] = 'Post was successfully created.'
      format.html { redirect_to(@post) }
      format.xml  { render :xml => @post, :status => :created, :location => @post }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
    end
  end
end

  def displayuser
  end
end
