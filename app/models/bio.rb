class Bio < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id
  attr_accessible :first_name, :last_name, :user_id
end
