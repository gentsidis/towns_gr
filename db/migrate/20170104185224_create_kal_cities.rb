class CreateKalCities < ActiveRecord::Migration[5.0]
  def change
    create_table :kal_cities do |t|
      t.string :name
      t.string :title
      t.references :regional_unity, foreign_key: true

      t.timestamps
    end
  end
end
