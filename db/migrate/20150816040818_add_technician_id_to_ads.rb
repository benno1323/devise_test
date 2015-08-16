class AddTechnicianIdToAds < ActiveRecord::Migration
  def change
    add_column :ads, :technician_id, :integer
  end
end
