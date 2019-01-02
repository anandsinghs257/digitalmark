class RemoveContactNoFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :contact_no, :integer
  end
end
