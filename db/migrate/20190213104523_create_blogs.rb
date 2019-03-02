class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :category_id
      t.text :body
      t.text :image_id
      t.timestamps
    end
  end
end
