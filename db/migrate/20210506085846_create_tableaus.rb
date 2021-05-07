class CreateTableaus < ActiveRecord::Migration[6.1]
  def change
    create_table :tableaus do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
