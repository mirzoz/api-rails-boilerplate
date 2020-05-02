class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :country
      t.integer :account_type, default: 0
      t.text :observation

      t.timestamps
    end
  end
end
