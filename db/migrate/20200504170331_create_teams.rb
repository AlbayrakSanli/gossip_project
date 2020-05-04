class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :competence
      t.string :taste

      t.timestamps
    end
  end
end
