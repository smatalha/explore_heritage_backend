class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :date_inscribed
      t.string :justification
      t.string :image_url
      t.string :location
      t.string :http_url
      t.string :short_description
      t.boolean :danger
      t.boolean :visited
      t.references :category, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
