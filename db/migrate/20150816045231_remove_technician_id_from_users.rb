class RemoveTechnicianIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :technician_id, :integer
  end
end
