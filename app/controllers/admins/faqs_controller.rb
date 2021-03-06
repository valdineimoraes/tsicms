class Admins::FaqsController < Admins::BaseController

  add_breadcrumb "Perguntas Frequentes", :admins_faqs_path

  before_action :set_faq, only: [:edit, :update, :destroy, :show]

  def index
    @faqs = Faq.order(created_at: :desc)
  end

  def new
    add_breadcrumb "Nova Pergunta", :new_admins_faq_path
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      flash[:success] = I18n.t('flash.actions.create.f',
                               resource_name: Faq.model_name.human)
      redirect_to admins_faqs_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :new
    end
  end

  def edit
    add_breadcrumb "Editar Pergunta: #{@faq.title}", :edit_admins_faq_path
  end

  def update
    if @faq.update_attributes(faq_params)
      flash[:success] = I18n.t('flash.actions.update.f',
                               resource_name: Faq.model_name.human)
      redirect_to admins_faqs_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :edit
    end
  end

  def destroy
    @faq.destroy
    flash[:success] = I18n.t('flash.actions.destroy.f',
                             resource_name: Faq.model_name.human)
    redirect_to admins_faqs_path
  end

  protected
  def faq_params
    params.require(:faq).permit(:title, :answer)
  end

  def set_faq
    @faq = Faq.find(params[:id])
  end

end
