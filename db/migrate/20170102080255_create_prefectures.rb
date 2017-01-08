class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
