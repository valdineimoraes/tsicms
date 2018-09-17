crumb :root do
  link "Dashboard", admins_root_path
end

###############
crumb :matrices do
  link "Matrizes", admins_matrices_path
end

crumb :edit_matrix do |p|
  link "Editar Matriz", p
  parent :matrices, p
end

crumb :new_matrix do |p|
  link "Nova Matriz", p
  parent :matrices, p
end

crumb :show_matrix do |p|
  link " #{p.name}", p
  parent :matrices, p
end

###############
crumb :periods do
  link "Periodos", admins_periods_path
end

crumb :edit_period do |c|
  link "Editar Periodo", c
  parent :periods, c
end

crumb :new_period do |c|
  link "Novo Periodo", c
  parent :periods, c
end

crumb :show_period do |c|
  link " #{c.name}", c
  parent :periods, c
end
###############

crumb :disciplines do
  link "Disciplinas", admins_disciplines_path
end

crumb :edit_discipline do |pk|
  link "Editar Disciplina", pk
  parent :disciplines, pk
end

crumb :new_discipline do |pk|
  link "Nova Disciplina", pk
  parent :disciplines, pk
end

crumb :show_discipline do |pk|
  link " #{pk.name}", pk
  parent :disciplines, pk
end


# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).