class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :firstname , null: false , index: true
      t.string :lastname , null: false , index: true
      t.string :address , null: false , index: true

      t.timestamps
    end
  end
end
