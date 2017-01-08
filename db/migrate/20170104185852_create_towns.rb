class CreateTowns < ActiveRecord::Migration[5.0]
  def change
    create_table :towns do |t|
      t.string :name
      t.string :title
      t.string :kal_townID
      t.string :kap_townID
      t.string :kal_type
      t.string :kal_base
      t.string :population
      t.string :kap_type
      t.references :section, foreign_key: true
      t.references :kap_city, foreign_key: true

      t.timestamps
    end
  end
end
