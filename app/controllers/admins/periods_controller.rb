class Admins::PeriodsController < Admins::BaseController

  def index
    @periods = Period.all.order(name: :asc)
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
      flash[:sucess] = "Successfully updated"
      redirect_to admins_periods_path
    else
      
      redirect_to :edit
    end
  end

  def create
    @period = Period.new(period_params)

    if @period.save
      flash[:success] = "Successfully created period."
      redirect_to admins_periods_path
    else
      
      redirect_to :new
  end

  protected
    def period_params
      params.require(:period).permit(:name)
    end
  end  

end
