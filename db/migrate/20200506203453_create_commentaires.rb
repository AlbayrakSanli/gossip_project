class CreateCommentaires < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaires do |t|
      t.text :commentaire

      t.timestamps
    end
  end
end
