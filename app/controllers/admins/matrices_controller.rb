class Admins::MatricesController < Admins::BaseController

  def index
    @matrices = Matrix.all.order(name: :asc)
  end

  def show
  end

  def new
    @matrix = Matrix.new
  end

  def create
    @matrix = Matrix.new(matrices_params)

    if @matrix.save
      flash[:success] = "Successfully created matrix"
      redirect_to admins_matrices_path
    else
      flash[:error] = "Error, There are incorrect data!"
      redirect_to :new
  end

  def edit
    @matrix = Matrix.find(params[:id])
  end

  def update
    @matrix = Matrix.find(params[:id])

    if @matrix.update_attributes(matrices_params)
      flash[:sucess] = "Successfully updated"
      redirect_to admins_matrices_path
    else
      flash[:error] = "Error, There are incorrect data!"
      redirect_to :edit
    end
  end

  private
   
    def matrices_params
      params.require(:matrices).permit(:name)
    end
  end
end
