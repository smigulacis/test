class FormasController < ApplicationController
  # GET /tests
  # GET /tests.json
  def index
    @tests = Formas.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tests }
    end
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    @test = Formas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @test }
    end
  end

  # GET /tests/new
  # GET /tests/new.json
  def new
    @test = Formas.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @test }
    end
  end

  # GET /tests/1/edit
  def edit
    @test = Formas.find(params[:id])
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Formas.new(params[:test])


  if @test.save
    redirect_to new_formas_path
  else
    render :action => 'new'
  end

  end

  # PUT /tests/1
  # PUT /tests/1.json
  def update
    @test = Formas.find(params[:id])

    respond_to do |format|
      if @test.update_attributes(params[:test])
        format.html { redirect_to @test, :notice => 'Test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test = Formas.find(params[:id])
    @test.destroy

    respond_to do |format|
      format.html { redirect_to tests_url }
      format.json { head :no_content }
    end
  end
end
