class Bio < ActiveRecord::Base
  belongs_to :user
  attr_accessible :first_name, :last_name, :user_id
end
