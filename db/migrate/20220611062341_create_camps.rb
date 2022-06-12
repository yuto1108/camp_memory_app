class CreateCamps < ActiveRecord::Migration[6.0]
  def change
    create_table :camps do |t|
      t.integer :prefecture_id, null: false
      t.string :name, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
