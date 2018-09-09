class CreateAdminsMatrices < ActiveRecord::Migration[5.2]
  def change
    create_table :admins_matrices do |t|
      t.string :name

      t.timestamps
    end
  end
end
