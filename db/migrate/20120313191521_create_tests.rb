class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :vards
      t.string :comment

      t.timestamps
    end
  end
end
