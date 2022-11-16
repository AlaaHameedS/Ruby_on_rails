class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :id_author , null: false , index: true
      t.string :title , null: false , index: true
      t.string :publisher , null: false , index: true
      t.string :year , null: false , index: true 



      t.timestamps
    end
  end
end
