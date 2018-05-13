class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.integer :read_count
      t.integer :page_amount
      t.string :uid

      t.timestamps
    end
  end
end
