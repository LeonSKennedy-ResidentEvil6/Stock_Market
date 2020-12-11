class CreateInvestors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.string :username
      t.string :name
      t.string :email
      t.integer :funds
      t.string :password

      t.timestamps
    end
  end
end
