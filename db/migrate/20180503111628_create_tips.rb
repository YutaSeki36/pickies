class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.string :content
      t.integer :type_id
      t.references :user, foreign_key: true
      t.integer :good_count

      t.timestamps
    end
  end
end
