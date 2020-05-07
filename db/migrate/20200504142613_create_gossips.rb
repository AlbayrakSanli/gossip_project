class CreateGossips < ActiveRecord::Migration[6.0]
  def change
    create_table :gossips do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :city

      t.timestamps
    end
  end
end
