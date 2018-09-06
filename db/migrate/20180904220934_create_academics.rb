class CreateAcademics < ActiveRecord::Migration[5.2]
  def change
    create_table :academics do |t|
      t.string :name
      t.boolean :graduated
      t.timestamps
    end
  end
end
