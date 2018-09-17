class Admins::PeriodsController < Admins::BaseController

  before_action :set_period, only: [:edit, :update, :destroy]

  def index
    @periods = Period.all.paginate(:page => params[:page], :per_page => 5).order(name: :asc)
  end

  def new
    @period = Period.new
  end

  def show
  end

  def edit
    @period = Period.find(params[:id])
  end

  def update
    @period = Period.find(params[:id])

    if @period.update_attributes(period_params)
      flash[:success] = "Successfully updated"
      redirect_to admins_periods_path
    else
      flash[:error] = "Data with errors"
      render :edit
    end
  end

  def create
    @period = Period.new(period_params)

    if @period.save
      flash[:success] = "Successfully created period."
      redirect_to admins_periods_path
    else
      flash[:error] = "Data with errors"
      render :new
  end

  def destroy 
    @period = Period.find(params[:id])
    @period.destroy
    flash[:success] = "Successfully Removed"
    redirect_to admins_periods_path
  end


  protected
    def period_params
      params.require(:period).permit(:name, :matrix_id)
    end

    def set_period 
      @period = Period.find(params[:id])
    end

  end  

end
