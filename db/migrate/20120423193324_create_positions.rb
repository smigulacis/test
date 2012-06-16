class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
        t.column "student_id", :integer
        t.column "title", :string
      t.timestamps
    end
  end
end
