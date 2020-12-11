class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.integer :price
      t.integer :volume
      t.belongs_to :investor, foreign_key: true
      t.belongs_to :sector, foreign_key: true

      t.timestamps
    end
  end
end
