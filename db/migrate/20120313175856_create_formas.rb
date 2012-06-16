class CreateFormas < ActiveRecord::Migration
  def change
    create_table :formas do |t|
      t.string :vards
      t.text :comment

      t.timestamps
    end
  end
end
