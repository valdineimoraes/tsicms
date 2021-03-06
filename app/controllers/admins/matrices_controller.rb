class Admins::MatricesController < Admins::BaseController

  add_breadcrumb "Matrizes", :admins_matrices_path

  before_action :set_matrix, only: [ :edit, :update, :destroy, :show]

  def index
    @matrices = Matrix.order(:name)
  end

  def new
    add_breadcrumb "Nova Matriz", :new_admins_matrix_path
    @matrix = Matrix.new
  end

  def edit
    add_breadcrumb "Editar Matriz: #{@matrix.name}", :edit_admins_matrix_path
  end

  def create
    @matrix = Matrix.new(matrix_params)
    if @matrix.save
      flash[:success] = I18n.t('flash.actions.create.f',
                               resource_name: Matrix.model_name.human)
      redirect_to admins_matrices_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :new
    end
  end

  def update
    if @matrix.update(matrix_params)
      flash[:success] = I18n.t('flash.actions.update.f',
                               resource_name: Matrix.model_name.human)
      redirect_to admins_matrices_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :edit
    end
  end

  def destroy
    @matrix.destroy
    flash[:success] = I18n.t('flash.actions.destroy.f',
                             resource_name: Matrix.model_name.human)
    redirect_to admins_matrices_path
  end

  private
  def matrix_params
    params.require(:matrix).permit(:name)
  end

  def set_matrix
    @matrix = Matrix.find(params[:id])
  end
end
