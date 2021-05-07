class CreateOeuvres < ActiveRecord::Migration[6.1]
  def change
    create_table :oeuvres do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
