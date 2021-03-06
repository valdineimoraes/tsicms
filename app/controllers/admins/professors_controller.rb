class Admins::ProfessorsController < Admins::BaseController

  add_breadcrumb "Professores", :admins_professors_path

  before_action :set_professor, only: [:edit, :update, :destroy, :show]

  def index
    @professors = Professor.order(name: :asc)
  end

  def new
    add_breadcrumb "Novo Professor", :new_admins_professor_path
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(professor_params)
    if @professor.save
      flash[:success] = I18n.t('flash.actions.create.m', resource_name: Professor.model_name.human)
      redirect_to admins_professors_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :new
    end
  end

  def edit
    add_breadcrumb "Editar Professor: #{@professor.name}", :edit_admins_professor_path 
  end

  def update
    if @professor.update(professor_params)
      flash[:success] = I18n.t('flash.actions.update.m', resource_name: Professor.model_name.human)
      redirect_to admins_professor_path(@professor)
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :edit
    end
  end

  def destroy
    if @professor.destroy
      flash[:success] = I18n.t('flash.actions.destroy.m',
                               resource_name: Professor.model_name.human)
    else
      flash[:alert] = 'Não é possível remover professores com vínculos!'
    end
    redirect_to admins_professors_path
  end

  def show
    store_location
  end

  protected

  def professor_params
    params.require(:professor).permit(:name,
                                      :lattes,
                                      :occupation_area,
                                      :gender,
                                      :image,
                                      :image_cache,
                                      :email,
                                      :professor_title_id,
                                      :professor_category_id)
  end

  def set_professor
    @professor = Professor.find(params[:id])
  end
end
