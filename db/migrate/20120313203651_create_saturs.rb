class CreateSaturs < ActiveRecord::Migration
  def change
    create_table :saturs do |t|

      t.timestamps
    end
  end
end
