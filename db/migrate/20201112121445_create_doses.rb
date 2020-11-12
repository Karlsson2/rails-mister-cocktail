class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.references :ingredient
      t.references :cocktail
      t.string :description

      t.timestamps
    end
  end
end
