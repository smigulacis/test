class StudentsController < ApplicationController

 def index
  @student = Student.new
  @positionData = Position.find(:all)
  if params[:meklet]
  	@studentsData = Student.meklet(params[:meklet])
  else
  	@studentsData = Student.find(:all)
  end
      
 end
 
  def show
  	 @studentsData = Student.find(:all)
    @student = Student.find(params[:id])
    render :action => "index"
  end 
 
 def create
  @student = Student.new(params[:student])
  @student.position.build(:title => "xxx")
  @student.position_id = params[:position]


   if @student.save
   flash[:notice] = "Saturs pievienots"
    redirect_to :controller => "students", :action => 'index', :notice => "ok" 
   else
   flash[:notice] = @student.errors.full_messages
    redirect_to :controller => "students", :action => 'index', :error => "Fail" 
   end
 end


  def update
    @students = Student.find(params[:id])

    respond_to do |format|
      if @students.update_attributes(params[:student])     	
        format.html { redirect_to @students, :notice => 'Saturs izlabots' }
      else
      format.html { redirect_to @students, :notice => 'Saturs nav izlabots' }
      end
    end
  end

def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_path, :notice => 'Saturs dzēsts' }
    end
  end


end
