class Admins::DisciplinesController < Admins::BaseController
  
  def index
    @disciplines = Discipline.all.order(name: :asc)
  end
  
end
