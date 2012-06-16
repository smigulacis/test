class AddRezidentToStudents < ActiveRecord::Migration
  def change
    add_column :students, :rezident, :string

  end
end
