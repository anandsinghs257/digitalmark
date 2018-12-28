class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.integer :contact_no
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
