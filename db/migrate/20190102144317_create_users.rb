class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :contact_no
      t.string :email
      t.text :message
    end
  end
end
