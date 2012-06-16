class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :vards
      t.string :uzvards
      t.column "position_id", :integer

      t.timestamps
    end
  end
end
