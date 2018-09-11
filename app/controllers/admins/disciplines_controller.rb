class Admins::DisciplinesController < Admins::BaseController

  before_action :set_disciplines, only: [:edit, :update, :destroy]
  
  def index
    @disciplines = Discipline.all.order(name: :asc)
  end

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      flash[:success] = "Successfully created discipline."
      redirect_to admins_disciplines_path
    else
      flash[:error] = "Dados incorretos"
      redirect_to :new
  end


  def update
    @discipline = Discipline.find(params[:id])

    if @discipline.update_attributes(discipline_params)
      redirect_to admins_disciplines_path
      flash[:sucess] = "Successfully updated"      
    else
      flash[:error] = "Dados incorretos"
      redirect_to :edit
    end

  end

  def destroy
    @discipline.destroy
    flash[:success] = "Successfully Removed"
    redirect_to admins_disciplines_path
  end


  protected 

  def discipline_params
    params.require(:discipline).permit(:name)
  end

  def set_disciplines
    @discipline = Discipline.find(params[:id])
  end
  
  end
  
end
