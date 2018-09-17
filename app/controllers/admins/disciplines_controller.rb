class Admins::DisciplinesController < Admins::BaseController

  before_action :set_disciplines, only: [:edit, :update, :destroy]
  
  def index
    @disciplines = Discipline.all.order(name: :asc)
  end

  def new
    @discipline = Discipline.new
  end

  def edit
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      flash[:success] = 'Successfully created discipline.'
      redirect_to admins_disciplines_path
    else
      flash[:error] = 'Data with errors'
      render :new
  end


  def update
    @discipline = Discipline.find(params[:id])

    if @discipline.update_attributes(discipline_params)
      redirect_to admins_disciplines_path
      flash[:sucess] = "Successfully updated"      
    else
      flash[:error] = "Data with errors"
      render :edit
    end

  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy
    flash[:success] = "Successfully Removed"
    redirect_to admins_disciplines_path
  end


  protected 

  def discipline_params
    params.require(:discipline).permit(:name, :code, :hours, :menu, :period_id )
  end

  def set_disciplines
    @discipline = Discipline.find(params[:id])
  end
  
  end
  
end
