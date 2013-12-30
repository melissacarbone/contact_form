class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.string :subject, null: false
      t.text :description
      t.string :first_name
      t.string :last_name
    end
    add_index :contacts, :email, :unique => true
  end
end
