
Matrix.create([{
    name: "Matriz 2",
  }])

  Period.create([{
    name: "Periodo 2",
  }])

  Admin.create_with(name: 'Administrador', password: '123456').find_or_create_by!(email: 'admin@admin.com')
