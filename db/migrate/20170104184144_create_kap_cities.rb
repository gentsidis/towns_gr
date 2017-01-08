class CreateKapCities < ActiveRecord::Migration[5.0]
  def change
    create_table :kap_cities do |t|
      t.string :name
      t.string :title
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
