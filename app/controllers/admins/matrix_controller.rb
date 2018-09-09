class Admins::MatricesController < Admins::BaseController
  
  def index
    @matrices = Matrix.all.order(name: :asc)
  end

  def edit
    @matrix = Matrix.find(params[:id])
  end

  def create
    @matrix = Matrix.new(matrix_params)

    if @matrix.save
      flash[:success] = "Successfully created matrix."
      redirect_to admins_matrices_path
    else
      flash[:error] = "Dados incorretos"
      redirect_to :new
  end


  def update
    @matrix = Matrix.find(params[:id])

    if @matrix.update_attributes(matrix_params)
      redirect_to admins_matrices_path
      flash[:sucess] = "Successfully updated"      
    else
      flash[:error] = "Dados incorretos"
      redirect_to :edit
    end

  end

  protected 
  def matrix_params
    params.require(:matrix).permit(:name)
  end
  
  end

  
end
