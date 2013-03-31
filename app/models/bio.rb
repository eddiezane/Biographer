class Bio < ActiveRecord::Base
  belongs_to :user
  before_save :create_email_md5
  validates_uniqueness_of :user_id
  attr_accessible :user_id, :first_name, :last_name, :phone_number, :school, :occupation, :resume_url, :about_me

  private
    def create_email_md5
      self.email_md5 = Digest::MD5.hexdigest(self.user.email)
    end
end
