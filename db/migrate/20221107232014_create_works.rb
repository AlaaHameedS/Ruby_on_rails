class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.string :work_name
      t.string :work_location
      

      t.timestamps
    end
  end
end
