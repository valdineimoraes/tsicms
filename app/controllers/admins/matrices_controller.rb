class Admins::MatricesController < Admins::BaseController
  
  #before_action :set_matrices, only: [:edit, :update, :destroy]

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
      flash[:error] = "Data with errors"
      redirect_to :new
  end


  def update
    @matrix = Matrix.find(params[:id])

    if @matrix.update_attributes(matrix_params)
      redirect_to admins_matrices_path
      flash[:success] = "Successfully updated"      
    else
      flash[:error] = "Data with errors"
      redirect_to :edit
    end

  end

  def destroy
    @matrix.destroy
    flash[:success] = "Successfully destroy" 
    redirect_to admins_matrices_path
  end


  protected 
    def matrix_params
      params.require(:matrix).permit(:name)
    end
    
    

  end

  
end
