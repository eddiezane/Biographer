class AddMoreToBio < ActiveRecord::Migration
  def change
    add_column :bios, :about_me, :text
    add_column :bios, :phone_number, :string
    add_column :bios, :school, :string
    add_column :bios, :occupation, :string
    add_column :bios, :resume_url, :string
    add_column :bios, :email_md5, :string
  end
end
