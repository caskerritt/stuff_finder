class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :title
      t.string :description
      t.string :url
      t.integer :user_id
      t.references :category
      t.timestamps
    end
  end
end
