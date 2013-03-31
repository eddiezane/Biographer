class AddBioIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :bio_id, :integer
  end
end
