class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :login
      t.string :password
      t.string :login_url
      t.text :notes
      t.integer :folder_id

      t.timestamps
    end
    add_index :items, :folder_id
  end
end
